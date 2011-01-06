#!/bin/bash

# http://toolmantim.com/thoughts/setting_up_a_new_remote_git_repository

mkdir "$@.git"
cd "$@.git"
git --bare init


echo "On client:"
echo "$ mkdir $@"
echo "$ cd $@"
echo "$ git init"
echo "$ git add *"
echo "$ git commit -a -m \"Initial import\""
echo "$ git remote add origin ssh://optimusprime.selfip.net/home/charles/git_repos/$@.git"
echo "$ git push origin master"
