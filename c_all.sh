#!/bin/bash

###############################################################################
# For coloring bash echo, see http://www.faqs.org/docs/abs/HTML/colorizing.html
red='\033[1;31m'
reset_color='tput sgr0'

###############################################################################
echo
reps=$(ls --ignore=*.py --ignore=*.sh --ignore=*.list)
for i in $reps 
  do 
     echo -e "$red$i"; $reset_color
     cd $i
     git $@
     cd ..
     echo " "
done

###############################################################################
