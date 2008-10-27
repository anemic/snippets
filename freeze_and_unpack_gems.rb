# unpack and build gems rails 2.x

# add to enviornment.rb
config.gem "hpricot" 

rake gems:unpack GEM=hpricot 
rake gems:build