// LOMO Effect Photoshop Script
// v1.1
// May 13, 2005
// By Christopher Holland
// chris@concepthouse.com 
// AIM/iChat conceptDawg


// The script creates a history state when it starts so you can always go back if there is a problem.
// It also creates a layer set to keep all of its layers in (tidy, don't you think?).
// There is really only one thing you might want to change...so here it is.
// The last step is to do a lens blur, but this could take a while on larger images so I leave it as an option here:

// The choices here are: 
// 0 = no
// 1 = yes
// 2 = prompt

var doDefraction = 1;






// Don't change anything below here unless you know what you are doing. Or just want to play. Whatever.

var docRef = app.activeDocument;

// Save the state of the document before you do anything.
// =======================================================
// =======================================================
var id3 = charIDToTypeID( "Mk  " );
    var desc2 = new ActionDescriptor();
    var id4 = charIDToTypeID( "null" );
        var ref1 = new ActionReference();
        var id5 = charIDToTypeID( "SnpS" );
        ref1.putClass( id5 );
    desc2.putReference( id4, ref1 );
    var id6 = charIDToTypeID( "From" );
        var ref2 = new ActionReference();
        var id7 = charIDToTypeID( "HstS" );
        var id8 = charIDToTypeID( "CrnH" );
        ref2.putProperty( id7, id8 );
    desc2.putReference( id6, ref2 );
executeAction( id3, desc2, DialogModes.NO );


// Get Image size for later
var iw = docRef.width;
var ih = docRef.height;
var feather = 1.0;
var maxDim = 1.0;

if (iw > ih)
	maxDim = iw;
else
	maxDim = ih;
feather = maxDim / 12.0;

// =======================================================
var id645 = charIDToTypeID( "Mk  " );
    var desc140 = new ActionDescriptor();
    var id646 = charIDToTypeID( "null" );
        var ref85 = new ActionReference();
        var id647 = stringIDToTypeID( "layerSection" );
        ref85.putClass( id647 );
    desc140.putReference( id646, ref85 );
    var id648 = charIDToTypeID( "Usng" );
        var desc141 = new ActionDescriptor();
        var id649 = charIDToTypeID( "Nm  " );
        desc141.putString( id649, "Lomo Effects" );
    var id650 = stringIDToTypeID( "layerSection" );
    desc140.putObject( id648, id650, desc141 );
executeAction( id645, desc140, DialogModes.NO );

// Contrast
// =======================================================
var id33 = charIDToTypeID( "Mk  " );
    var desc9 = new ActionDescriptor();
    var id34 = charIDToTypeID( "null" );
        var ref8 = new ActionReference();
        var id35 = charIDToTypeID( "AdjL" );
        ref8.putClass( id35 );
    desc9.putReference( id34, ref8 );
    var id36 = charIDToTypeID( "Usng" );
        var desc10 = new ActionDescriptor();
        var id37 = charIDToTypeID( "Type" );
            var desc11 = new ActionDescriptor();
            var id38 = charIDToTypeID( "Cntr" );
            desc11.putInteger( id38, 20 );
        var id39 = charIDToTypeID( "BrgC" );
        desc10.putObject( id37, id39, desc11 );
    var id40 = charIDToTypeID( "AdjL" );
    desc9.putObject( id36, id40, desc10 );
executeAction( id33, desc9, DialogModes.NO );
docRef.activeLayer.name = "Lomo Contrast";

// Hue/Saturation
// =======================================================
var id41 = charIDToTypeID( "Mk  " );
    var desc12 = new ActionDescriptor();
    var id42 = charIDToTypeID( "null" );
        var ref9 = new ActionReference();
        var id43 = charIDToTypeID( "AdjL" );
        ref9.putClass( id43 );
    desc12.putReference( id42, ref9 );
    var id44 = charIDToTypeID( "Usng" );
        var desc13 = new ActionDescriptor();
        var id45 = charIDToTypeID( "Type" );
            var desc14 = new ActionDescriptor();
            var id46 = charIDToTypeID( "Clrz" );
            desc14.putBoolean( id46, false );
            var id47 = charIDToTypeID( "Adjs" );
                var list2 = new ActionList();
                    var desc15 = new ActionDescriptor();
                    var id48 = charIDToTypeID( "H   " );
                    desc15.putInteger( id48, 0 );
                    var id49 = charIDToTypeID( "Strt" );
                    desc15.putInteger( id49, 20 );
                    var id50 = charIDToTypeID( "Lght" );
                    desc15.putInteger( id50, 0 );
                var id51 = charIDToTypeID( "Hst2" );
                list2.putObject( id51, desc15 );
            desc14.putList( id47, list2 );
        var id52 = charIDToTypeID( "HStr" );
        desc13.putObject( id45, id52, desc14 );
    var id53 = charIDToTypeID( "AdjL" );
    desc12.putObject( id44, id53, desc13 );
executeAction( id41, desc12, DialogModes.NO );
docRef.activeLayer.name = "Lomo Saturation";


// Shadow Layers

// =======================================================
var id252 = charIDToTypeID( "Mk  " );
    var desc55 = new ActionDescriptor();
    var id253 = charIDToTypeID( "null" );
        var ref25 = new ActionReference();
        var id254 = stringIDToTypeID( "contentLayer" );
        ref25.putClass( id254 );
    desc55.putReference( id253, ref25 );
    var id255 = charIDToTypeID( "Usng" );
        var desc56 = new ActionDescriptor();
        var id256 = charIDToTypeID( "Nm  " );
        desc56.putString( id256, "Lomo Shadow 1" );
        var id257 = charIDToTypeID( "Md  " );
        var id258 = charIDToTypeID( "BlnM" );
        var id259 = charIDToTypeID( "Ovrl" );
        desc56.putEnumerated( id257, id258, id259 );
        var id260 = charIDToTypeID( "Type" );
            var desc57 = new ActionDescriptor();
            var id261 = charIDToTypeID( "Rvrs" );
            desc57.putBoolean( id261, true );
            var id262 = charIDToTypeID( "Angl" );
            var id263 = charIDToTypeID( "#Ang" );
            desc57.putUnitDouble( id262, id263, 90.000000 );
            var id264 = charIDToTypeID( "Type" );
            var id265 = charIDToTypeID( "GrdT" );
            var id266 = charIDToTypeID( "Rdl " );
            desc57.putEnumerated( id264, id265, id266 );
            var id267 = charIDToTypeID( "Scl " );
            var id268 = charIDToTypeID( "#Prc" );
            desc57.putUnitDouble( id267, id268, 122.000000 );
            var id269 = charIDToTypeID( "Grad" );
                var desc58 = new ActionDescriptor();
                var id270 = charIDToTypeID( "Nm  " );
                desc58.putString( id270, "BT" );
                var id271 = charIDToTypeID( "GrdF" );
                var id272 = charIDToTypeID( "GrdF" );
                var id273 = charIDToTypeID( "CstS" );
                desc58.putEnumerated( id271, id272, id273 );
                var id274 = charIDToTypeID( "Intr" );
                desc58.putDouble( id274, 4096.000000 );
                var id275 = charIDToTypeID( "Clrs" );
                    var list7 = new ActionList();
                        var desc59 = new ActionDescriptor();
                        var id276 = charIDToTypeID( "Clr " );
                            var desc60 = new ActionDescriptor();
                            var id277 = charIDToTypeID( "Rd  " );
                            desc60.putDouble( id277, 0.000000 );
                            var id278 = charIDToTypeID( "Grn " );
                            desc60.putDouble( id278, 0.000000 );
                            var id279 = charIDToTypeID( "Bl  " );
                            desc60.putDouble( id279, 0.000000 );
                        var id280 = charIDToTypeID( "RGBC" );
                        desc59.putObject( id276, id280, desc60 );
                        var id281 = charIDToTypeID( "Type" );
                        var id282 = charIDToTypeID( "Clry" );
                        var id283 = charIDToTypeID( "UsrS" );
                        desc59.putEnumerated( id281, id282, id283 );
                        var id284 = charIDToTypeID( "Lctn" );
                        desc59.putInteger( id284, 0 );
                        var id285 = charIDToTypeID( "Mdpn" );
                        desc59.putInteger( id285, 50 );
                    var id286 = charIDToTypeID( "Clrt" );
                    list7.putObject( id286, desc59 );
                        var desc61 = new ActionDescriptor();
                        var id287 = charIDToTypeID( "Clr " );
                            var desc62 = new ActionDescriptor();
                            var id288 = charIDToTypeID( "Rd  " );
                            desc62.putDouble( id288, 251.996109 );
                            var id289 = charIDToTypeID( "Grn " );
                            desc62.putDouble( id289, 251.996109 );
                            var id290 = charIDToTypeID( "Bl  " );
                            desc62.putDouble( id290, 251.996109 );
                        var id291 = charIDToTypeID( "RGBC" );
                        desc61.putObject( id287, id291, desc62 );
                        var id292 = charIDToTypeID( "Type" );
                        var id293 = charIDToTypeID( "Clry" );
                        var id294 = charIDToTypeID( "UsrS" );
                        desc61.putEnumerated( id292, id293, id294 );
                        var id295 = charIDToTypeID( "Lctn" );
                        desc61.putInteger( id295, 4096 );
                        var id296 = charIDToTypeID( "Mdpn" );
                        desc61.putInteger( id296, 50 );
                    var id297 = charIDToTypeID( "Clrt" );
                    list7.putObject( id297, desc61 );
                desc58.putList( id275, list7 );
                var id298 = charIDToTypeID( "Trns" );
                    var list8 = new ActionList();
                        var desc63 = new ActionDescriptor();
                        var id299 = charIDToTypeID( "Opct" );
                        var id300 = charIDToTypeID( "#Prc" );
                        desc63.putUnitDouble( id299, id300, 80.000000 );
                        var id301 = charIDToTypeID( "Lctn" );
                        desc63.putInteger( id301, 0 );
                        var id302 = charIDToTypeID( "Mdpn" );
                        desc63.putInteger( id302, 50 );
                    var id303 = charIDToTypeID( "TrnS" );
                    list8.putObject( id303, desc63 );
                        var desc64 = new ActionDescriptor();
                        var id304 = charIDToTypeID( "Opct" );
                        var id305 = charIDToTypeID( "#Prc" );
                        desc64.putUnitDouble( id304, id305, 0.000000 );
                        var id306 = charIDToTypeID( "Lctn" );
                        desc64.putInteger( id306, 4096 );
                        var id307 = charIDToTypeID( "Mdpn" );
                        desc64.putInteger( id307, 50 );
                    var id308 = charIDToTypeID( "TrnS" );
                    list8.putObject( id308, desc64 );
                desc58.putList( id298, list8 );
            var id309 = charIDToTypeID( "Grdn" );
            desc57.putObject( id269, id309, desc58 );
        var id310 = stringIDToTypeID( "gradientLayer" );
        desc56.putObject( id260, id310, desc57 );
    var id311 = stringIDToTypeID( "contentLayer" );
    desc55.putObject( id255, id311, desc56 );
executeAction( id252, desc55, DialogModes.NO );

// =======================================================
// =======================================================
var id682 = charIDToTypeID( "Dplc" );
    var desc147 = new ActionDescriptor();
    var id683 = charIDToTypeID( "null" );
        var ref88 = new ActionReference();
        var id684 = charIDToTypeID( "Lyr " );
        var id685 = charIDToTypeID( "Ordn" );
        var id686 = charIDToTypeID( "Trgt" );
        ref88.putEnumerated( id684, id685, id686 );
    desc147.putReference( id683, ref88 );
    var id687 = charIDToTypeID( "Nm  " );
    desc147.putString( id687, "Lomo Shadows 2" );
executeAction( id682, desc147, DialogModes.NO );

// Center Lighting
// =======================================================
var id187 = charIDToTypeID( "Mk  " );
    var desc44 = new ActionDescriptor();
    var id188 = charIDToTypeID( "null" );
        var ref23 = new ActionReference();
        var id189 = stringIDToTypeID( "contentLayer" );
        ref23.putClass( id189 );
    desc44.putReference( id188, ref23 );
    var id190 = charIDToTypeID( "Usng" );
        var desc45 = new ActionDescriptor();
        var id191 = charIDToTypeID( "Nm  " );
        desc45.putString( id191, "Lomo Center Light" );
        var id192 = charIDToTypeID( "Opct" );
        var id193 = charIDToTypeID( "#Prc" );
        desc45.putUnitDouble( id192, id193, 80.000000 );
        var id194 = charIDToTypeID( "Md  " );
        var id195 = charIDToTypeID( "BlnM" );
        var id196 = charIDToTypeID( "Ovrl" );
        desc45.putEnumerated( id194, id195, id196 );
        var id197 = charIDToTypeID( "Type" );
            var desc46 = new ActionDescriptor();
            var id198 = charIDToTypeID( "Angl" );
            var id199 = charIDToTypeID( "#Ang" );
            desc46.putUnitDouble( id198, id199, 90.000000 );
            var id200 = charIDToTypeID( "Type" );
            var id201 = charIDToTypeID( "GrdT" );
            var id202 = charIDToTypeID( "Rdl " );
            desc46.putEnumerated( id200, id201, id202 );
            var id203 = charIDToTypeID( "Scl " );
            var id204 = charIDToTypeID( "#Prc" );
            desc46.putUnitDouble( id203, id204, 95.000000 );
            var id205 = charIDToTypeID( "Grad" );
                var desc47 = new ActionDescriptor();
                var id206 = charIDToTypeID( "Nm  " );
                desc47.putString( id206, "Color to Transparent" );
                var id207 = charIDToTypeID( "GrdF" );
                var id208 = charIDToTypeID( "GrdF" );
                var id209 = charIDToTypeID( "CstS" );
                desc47.putEnumerated( id207, id208, id209 );
                var id210 = charIDToTypeID( "Intr" );
                desc47.putDouble( id210, 4096.000000 );
                var id211 = charIDToTypeID( "Clrs" );
                    var list5 = new ActionList();
                        var desc48 = new ActionDescriptor();
                        var id212 = charIDToTypeID( "Clr " );
                            var desc49 = new ActionDescriptor();
                            var id213 = charIDToTypeID( "Rd  " );
                            desc49.putDouble( id213, 255.000000 );
                            var id214 = charIDToTypeID( "Grn " );
                            desc49.putDouble( id214, 255.000000 );
                            var id215 = charIDToTypeID( "Bl  " );
                            desc49.putDouble( id215, 255.000000 );
                        var id216 = charIDToTypeID( "RGBC" );
                        desc48.putObject( id212, id216, desc49 );
                        var id217 = charIDToTypeID( "Type" );
                        var id218 = charIDToTypeID( "Clry" );
                        var id219 = charIDToTypeID( "UsrS" );
                        desc48.putEnumerated( id217, id218, id219 );
                        var id220 = charIDToTypeID( "Lctn" );
                        desc48.putInteger( id220, 0 );
                        var id221 = charIDToTypeID( "Mdpn" );
                        desc48.putInteger( id221, 50 );
                    var id222 = charIDToTypeID( "Clrt" );
                    list5.putObject( id222, desc48 );
                        var desc50 = new ActionDescriptor();
                        var id223 = charIDToTypeID( "Clr " );
                            var desc51 = new ActionDescriptor();
                            var id224 = charIDToTypeID( "Rd  " );
                            desc51.putDouble( id224, 255.000000 );
                            var id225 = charIDToTypeID( "Grn " );
                            desc51.putDouble( id225, 255.000000 );
                            var id226 = charIDToTypeID( "Bl  " );
                            desc51.putDouble( id226, 255.000000 );
                        var id227 = charIDToTypeID( "RGBC" );
                        desc50.putObject( id223, id227, desc51 );
                        var id228 = charIDToTypeID( "Type" );
                        var id229 = charIDToTypeID( "Clry" );
                        var id230 = charIDToTypeID( "UsrS" );
                        desc50.putEnumerated( id228, id229, id230 );
                        var id231 = charIDToTypeID( "Lctn" );
                        desc50.putInteger( id231, 4096 );
                        var id232 = charIDToTypeID( "Mdpn" );
                        desc50.putInteger( id232, 50 );
                    var id233 = charIDToTypeID( "Clrt" );
                    list5.putObject( id233, desc50 );
                desc47.putList( id211, list5 );
                var id234 = charIDToTypeID( "Trns" );
                    var list6 = new ActionList();
                        var desc52 = new ActionDescriptor();
                        var id235 = charIDToTypeID( "Opct" );
                        var id236 = charIDToTypeID( "#Prc" );
                        desc52.putUnitDouble( id235, id236, 100.000000 );
                        var id237 = charIDToTypeID( "Lctn" );
                        desc52.putInteger( id237, 0 );
                        var id238 = charIDToTypeID( "Mdpn" );
                        desc52.putInteger( id238, 50 );
                    var id239 = charIDToTypeID( "TrnS" );
                    list6.putObject( id239, desc52 );
                        var desc53 = new ActionDescriptor();
                        var id240 = charIDToTypeID( "Opct" );
                        var id241 = charIDToTypeID( "#Prc" );
                        desc53.putUnitDouble( id240, id241, 0.000000 );
                        var id242 = charIDToTypeID( "Lctn" );
                        desc53.putInteger( id242, 4096 );
                        var id243 = charIDToTypeID( "Mdpn" );
                        desc53.putInteger( id243, 50 );
                    var id244 = charIDToTypeID( "TrnS" );
                    list6.putObject( id244, desc53 );
                desc47.putList( id234, list6 );
            var id245 = charIDToTypeID( "Grdn" );
            desc46.putObject( id205, id245, desc47 );
        var id246 = stringIDToTypeID( "gradientLayer" );
        desc45.putObject( id197, id246, desc46 );
    var id247 = stringIDToTypeID( "contentLayer" );
    desc44.putObject( id190, id247, desc45 );
executeAction( id187, desc44, DialogModes.NO );



// ---------------------
// Do blurry layer stuff now...

docRef.activeLayer = docRef.artLayers[docRef.artLayers.length-1];

var lomoSet = docRef.layerSets.getByName("Lomo Effects");
var yesOrNo;
var newLayer;

if (doDefraction == 1)
	yesOrNo = true;
else if (doDefraction == 2)
	yesOrNo = prompt("Proceed with the lens defraction layer? It could take some time.");
else
	yesOrNo = false;

if (yesOrNo)
{
	var layerCount = docRef.artLayers.length;
	var found = false;
	
	// This finds the lowest layer to use as the background blur...then copies it and puts it in the layer set.
	// I had to step through the layers in case some image doesn't have a real "background" layer.
	for (var layerIndex = layerCount; layerIndex > 0; layerIndex--)
	{
		if (found == false)
		{
			var currentLayer = docRef.artLayers[layerIndex-1];
			if ( (currentLayer.visible) && (currentLayer.kind == LayerKind.NORMAL) )
			{
				found = true;
				newLayer = currentLayer.duplicate(lomoSet.artLayers.getByName("Lomo Contrast"),ElementPlacement.PLACEAFTER);
				docRef.activeLayer = newLayer;
				newLayer.blendMode = BlendMode.OVERLAY;
				newLayer.opacity = 80.00;
				newLayer.name = "Lomo Blur";
				newLayer.move(lomoSet.artLayers.getByName("Lomo Saturation"),ElementPlacement.PLACEAFTER);
				
				// Do the lens blur here...
				// =======================================================
				var id872 = charIDToTypeID( "Bokh" );
				var desc184 = new ActionDescriptor();
				var id873 = charIDToTypeID( "BkDi" );
				var id874 = charIDToTypeID( "BtDi" );
				var id875 = charIDToTypeID( "BeIn" );
				desc184.putEnumerated( id873, id874, id875 );
				var id876 = charIDToTypeID( "BkDp" );
				desc184.putInteger( id876, 0 );
				var id877 = charIDToTypeID( "BkDs" );
				desc184.putBoolean( id877, false );
				var id878 = charIDToTypeID( "BkIs" );
				var id879 = charIDToTypeID( "BtIs" );
				var id880 = charIDToTypeID( "BeS8" );
				desc184.putEnumerated( id878, id879, id880 );
				var id881 = charIDToTypeID( "BkIb" );
				desc184.putDouble( id881, maxDim / 60.0 );
				var id882 = charIDToTypeID( "BkIc" );
				desc184.putInteger( id882, 23 );
				var id883 = charIDToTypeID( "BkIr" );
				desc184.putInteger( id883, 0 );
				var id884 = charIDToTypeID( "BkSb" );
				desc184.putDouble( id884, 10.000000 );
				var id885 = charIDToTypeID( "BkSt" );
				desc184.putInteger( id885, 247 );
				var id886 = charIDToTypeID( "BkNa" );
				desc184.putInteger( id886, 0 );
				var id887 = charIDToTypeID( "BkNt" );
				var id888 = charIDToTypeID( "BtNt" );
				var id889 = charIDToTypeID( "BeNu" );
				desc184.putEnumerated( id887, id888, id889 );
				var id890 = charIDToTypeID( "BkNm" );
				desc184.putBoolean( id890, false );
				executeAction( id872, desc184, DialogModes.NO );
			}
		}
	}
} // end of lensblur option
