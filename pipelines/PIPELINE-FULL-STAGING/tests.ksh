#!/bin/ksh
FILE=/var/lib/jenkins/workspace/cp1D/test/integration/todoApiTest.py
#URL
URL=$1
echo $URL
val=`echo $?`
if [ $val -ne 0 ] ; then
        echo "Vacio URL"
        exit 0
else
        # URL="$(egrep Value url_output.txt|tr -s " "|cut -f2 -d" "|grep todos|egrep -v id|uniq|sed 's/\/$//g'|uniq|sed 's/\/todos//g')"
        # SED FILE
        A=`egrep -ia ^BASE_URL /var/lib/jenkins/workspace/cp1D/test/integration/todoApiTest.py`
        sed -i "s|${A}|BASE_URL = \"${URL}\"|g" $FILE
        exit 0
fi
