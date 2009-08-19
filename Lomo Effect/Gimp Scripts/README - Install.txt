Get the filter

The GIMP filter that I used on the above images was originally written by Francois Le Lay. It has since been updated by Donncha O Caoimh to work with GIMP 2.4 [installed by default on Ubuntu 7.10.] The script is released under GPL.

You can download the script from directly from: http://crunchbang.org/misc/gimplomo.scm

Place the script in your "~/.gimp-2.4/scripts/" directory.

Alternatively, if you're an Ubuntu user you'll probably find it quicker to use the terminal:

1. Open a terminal and enter the following command to download the filter:

wget http://crunchbang.org/misc/gimplomo.scm
2. Move the filter to the correct directory with this command:

mv gimplomo.scm ~/.gimp-2.4/scripts/gimplomo.scm
Usage

Run or restart GIMP, open an image file to work on and select: "Filters -> Light and Shadow -> Lomo...".