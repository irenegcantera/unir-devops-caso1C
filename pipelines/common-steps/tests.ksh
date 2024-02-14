#!/bin/ksh
FILE=todo-list-aws/test/integration/todoApiTest.py
#URL
URL=$1
URL_TEST=$2
val=`echo $?`
if [ $val -ne 0 ] ; then
        exit 0
else
        # SED FILE
        A=`egrep -ia ^BASE_URL ${URL_TEST}`
        sed -i "s|${A}|BASE_URL = \"${URL}\"|g" $FILE
        exit 0
fi
