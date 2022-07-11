#!/bin/bash.

#Declaration
selected=$1
saveFileVerz="tmpSubCat.txt"

#------


#echo "selected: ${selected}"
touch ${saveFileVerz}
> ${saveFileVerz}
cat Lists/${selected}.txt >> ${saveFileVerz}
