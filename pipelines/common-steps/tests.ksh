#!/bin/ksh
FILE=$2
#URL
URL=$1
val=`echo $?`
if [ $val -ne 0 ] ; then
        exit 0
else
        # SED FILE
        A=`egrep -ia ^BASE_URL ${FILE}`
        sed -i "s|${A}|BASE_URL = \"${URL}\"|g" $FILE
        exit 0
fi
