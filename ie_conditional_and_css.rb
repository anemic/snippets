# IE conditional statements for style sheets. Firefox and Safari read as comment and will not render. 

# External CSS 
<!--[if IE]>
	<link rel="stylesheet" type="text/css" href="ie-only.css" />
<![endif]-->

# Embedded CSS
<!--[if IE]>
  <style type="text/css">
    #container {font-family: arial,verdana,sans-serif,tahoma;}
  </style>
<![endif]-->

# The opposite technique, targeting only NON-IE browsers:
<!--[if IE]>
	<link rel="stylesheet" type="text/css" href="ie-only.css" />
<![endif]-->

# Target specific versions of IE
# IE 7 ONLY:
<!--[if IE 7]>
	<link href="IE-7-SPECIFIC.css" rel="stylesheet" type="text/css">
<![endif]-->

# IE 6 ONLY:
<!--[if IE 6]>
	<link rel="stylesheet" type="text/css" href="IE-6-SPECIFIC.css" />
<![endif]-->

# IE 5 ONLY:
<!--[if IE 5]>
	<link rel="stylesheet" type="text/css" href="IE-5-SPECIFIC.css" />
<![endif]-->

# IE 5.5 ONLY:
<!--[if IE 5.5000]>
<link rel="stylesheet" type="text/css" href="IE-55-SPECIFIC.css" />
<![endif]-->

# VERSION OF IE VERSION 6 OR LOWER: (I find this one pretty handy)
<!--[if lt IE 7]>
	<link rel="stylesheet" type="text/css" href="IE-6-OR-LOWER-SPECIFIC.css" />
<![endif]-->