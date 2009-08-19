; The GIMP -- an image manipulation program
; Copyright (C) 1995 Spencer Kimball and Peter Mattis
; 
; This program is free software; you can redistribute it and/or modify
; it under the terms of the GNU General Public License as published by
; the Free Software Foundation; either version 2 of the License, or
; (at your option) any later version.
; 
; This program is distributed in the hope that it will be useful,
; but WITHOUT ANY WARRANTY; without even the implied warranty of
; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
; GNU General Public License for more details.
; 
; You should have received a copy of the GNU General Public License
; along with this program; if not, write to the Free Software
; Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
;
; Copyright (C) 2005 Francois Le Lay <mfworx@gmail.com>
;
; Version 0.3 - Changed terminology, settings made more user-friendly
; Version 0.2 - Now using radial blending all-way
; Version 0.1 - Rectangular Selection Feathering doesn't look too good
; 
;
; Usage: 
;
; - Vignetting softness: The vignette layer is scaled with a 
;   default size equal to 1.5 the image size. Setting it to 2
;   will make the vignetting softer and going to 1 will make
;   the vignette layer the same size as the image, providing
;   for darker blending in the corners.
;
; - Saturation and contrast have default values set to 20 and act 
;   on the base layer.
;
; - Double vignetting: when checked this will duplicate the Vignette 
;   layer providing for a stronger vignetting effect.
;
;
; October 23, 2007
; Script made GIMP 2.4 compatible by Donncha O Caoimh, donncha@inphotos.org
; Download at http://inphotos.org/gimp-lomo-plugin/


(define (script-fu-lomo aimg adraw avig asat acon adv)
  (let* ((img (car (gimp-drawable-get-image adraw)))
         (owidth (car (gimp-image-width img)))
         (oheight (car (gimp-image-height img)))
         (halfwidth (/ owidth 2))
         (halfheight (/ oheight 2))
         (vignette (car (gimp-layer-new img
                                        owidth 
                                        oheight
                                        1
                                        "Vignette" 
                                        100 
                                        OVERLAY-MODE)))
         (overexpo (car (gimp-layer-new img
                                      owidth 
                                      oheight
                                      1
                                      "Over Exposure" 
                                      80 
                                      OVERLAY-MODE)))
    )
  
    ;
    ; init
    ;
    
    (gimp-context-push)
    (gimp-image-undo-group-start img)
    (gimp-context-set-foreground '(0 0 0))
    (gimp-context-set-background '(255 255 255))    
    
    ;
    ; adjust contrast and saturation
    ;
    
    (gimp-brightness-contrast adraw 0 acon)
    (gimp-hue-saturation adraw ALL-HUES 0 0 asat)
    
    ;
    ; add two layers
    ; prepare them for blending
    ;
    
    (gimp-image-add-layer img overexpo -1)
    (gimp-image-add-layer img vignette -1)
    (gimp-drawable-fill vignette TRANSPARENT-FILL)
    (gimp-layer-set-preserve-trans vignette 0)    
    (gimp-drawable-fill overexpo TRANSPARENT-FILL)
    (gimp-layer-set-preserve-trans overexpo 0)
    
    ;
    ; compute blend ending point depending on image orientation
    ;
    
    (define endingx)
    (define endingy)
    (if (> owidth oheight) (begin (set! endingx owidth )
                                  (set! endingy halfheight ))
                           (begin (set! endingx halfwidth )
                                  (set! endingy oheight ))
    )   
    
    ;
    ; let's do the vignetting effect
    ; apply a reverse radial blend on layer
    ; then scale layer by "avig" factor with a local origin
    ; if double vignetting is needed, duplicate layer and set duplicate opacity to 80%
    ;
    
    (gimp-edit-blend vignette 2 0 2 100 0 REPEAT-NONE TRUE FALSE 0 0 TRUE halfwidth halfheight endingx endingy)
    (gimp-layer-scale vignette (* owidth avig) (* oheight avig) 1 )
    (if (= adv TRUE) 
        ( begin 
          (set! hvignette (car (gimp-layer-copy vignette 0)))
          (gimp-layer-set-opacity hvignette 80)
	  (gimp-image-add-layer img hvignette -1)
        )
     )
    
    ;
    ; let's do the over-exposure effect
    ; swap foreground and background colors then
    ; apply a radial blend from center to farthest side of layer
    ;
    
    (gimp-context-swap-colors)
    (gimp-edit-blend overexpo 2 0 2 100 0 REPEAT-NONE FALSE FALSE 0 0 TRUE halfwidth halfheight endingx endingy)
    
    ;
    ; tidy up
    ;
    
    (gimp-image-undo-group-end img)
    (gimp-displays-flush)
    (gimp-context-pop)
  )
)

(script-fu-register "script-fu-lomo"
                    _"_Lomo..."
                    "Do a lomo effect on image. 
Updated by Donncha O Caoimh.  Newest version can 
be downloaded from http://inphotos.org/gimp-lomo-plugin/"
                    "Francois Le Lay <mfworx@gmail.com>"
                    "Francois Le Lay"
                    "15/02/05"
                    "*"
                    SF-IMAGE       "Input image"          0
                    SF-DRAWABLE    "Input drawable"       0
                    SF-ADJUSTMENT _"Vignetting softness" '(1.5 1 2 0.1 0.5 1 0)
                    SF-ADJUSTMENT _"Saturation" '(20 0 40 1 5 1 0)
                    SF-ADJUSTMENT _"Contrast" '(20 0 40 1 5 1 0)
                    SF-TOGGLE     _"Double vignetting" FALSE)
                    
(script-fu-menu-register "script-fu-lomo" _"<Image>/Filters/Light and Shadow")
