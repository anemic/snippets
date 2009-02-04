# /************************************* Folder and File Sizes ************************************/ 
# the du command
# the h flag prints out in "human-readable" formate such as 16M ./ instead of 31928 (default is displayed in blocks)
# the c flag prints out the total at the end (instead of 16M ./ will print 16M total)
du -hc

# get sizes of all files recursively in folder (gets sizes of all files and folders including files and folders within <folder_name>)
du -h <folder_name>

# specify depth of which to display
# only displays sizes of files and folders with in the current directory
du -d 1 -h

# print out only the total for the current directory 
du -sh
# Equivlant to 
du -d 0 -h
