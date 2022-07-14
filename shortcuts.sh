#!/bin/bash.
clear

saveFileVerz="overview.txt"
tempSubCat="tmpSubCat.txt"

function funcMenu() {
    echo "****** Menu ******"
    cat ${saveFileVerz}
    echo "*****************"
}


#print all txt fils in Lists with first Line as Overview
 > ${saveFileVerz}
for FILE in Lists/*.txt; do
    echo  "["$(basename "$FILE" .txt)"]" $(head -n1 $FILE) >> ${saveFileVerz}
done
funcMenu
echo "Enter your choice: "
#--------

read varname
clear 
funcMenu

while [ $varname != "x" ]
do
    $(bash openSubCat.sh ${varname})
    cat ${tempSubCat} | cut -f1,2 -d$'\t'
    read appName
    clear 
    #cat Lists/a.txt | grep '(a)' | cut -f2 -d$'\t'
    openApp=$(cat Lists/$varname.txt | grep '('$appName')' | cut -f3-10 -d$'\t') 
    echo $openApp
    $openApp
    
    funcMenu
    read varname
done
clear






