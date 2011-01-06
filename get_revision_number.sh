#!/bin/sh
# From http://blogs.codewise.org/wrf/article/sequential_revision_numbers_in_git
git rev-list --reverse HEAD | grep -n $@ | cut -d: -f1
