# Install and set up cheat for mac os x and TextMate

# install
sudo gem install cheat

# open TextMate
# open TextMate's bundle editor
# create a new command
# put the following code in the body
word=${TM_SELECTED_TEXT:-$TM_CURRENT_WORD}
echo "<html><head><title>Cheat Sheet for $word</title></head><body><pre>";
/usr/bin/cheat $word;
echo "</pre></body></html>";
# may have to edit path to where you intalled cheat, change /usr/bin/cheat to output of 'which cheat'
# change the output to Show as HTML
# click on activation and set it to a keyboard shortcut (such as ctrl-c)
# and your done when you want to see the cheat sheet for a selected item just highlight and ctrl-c