#!/bin/bash

TIMESTAMP=`date "+%Y-%m-%d %k:%M:%S %Z"`
NOW=`date "+%Y%m%d-%k%M%S"`

mkdir RepoB_$NOW && printf "RepoB new file created at $NOW" >> RepoB_$NOW/RepoB_$NOW.txt
git add .
git commit -m "RepoB new commit at: $TIMESTAMP" 
git push origin master
git fetch
git rebase origin/master