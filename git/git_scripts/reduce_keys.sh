#!/usr/local/bin/ruby
#
# Git Helper
# Version:: 1.0
# Updated:: November 2008
# Author:: Jacob Basham <jacob@paperpigeons.net>
#
# Small little script to do what I always do
# 
# Getting `git status` turns to:
# $> g
# 
# Adding changes, deleted deleted files and commiting turns to:
# $> g "Some fancy commit message"
#
# Right now it is simple, I plan to add more features to it, until
# that time comes, you can also just use g as an alias to git
#
# Do anything else with git turns to:
# $> g ___________________________________
#
#
#
# I keep it in my home bin directory
# I have my home bin directory in my path
# I gave the script execute permissions


if ARGV.length == 0
  puts(%x{git status})
elsif ARGV.length == 1 && (ARGV.first =~ /\"*\"/) == 0
  system(%{git add .})
  system(%{for i in `git status | grep deleted | awk '{print $3}'`; do git rm $i; done})
  puts(%x{git commit -m "#{ARGV.first}"})
else
  puts(%x{git #{ARGV.join(" ")}})
end