#!/bin/bash
# Bash script that creates users based on github userid
# creates notebooks directory and imports github's public keys

users='itzakehrlich
amoosa
jbwhit
jbagd
'

for username in ${users};
do
    sudo userdel -r "${username}"
done

for username in ${users};
do
    sudo adduser "${username}" --disabled-password --gecos ""
    sudo su - ${username} << EOF
cd
source activate py2simple
echo $PATH
ssh-import-id gh:"${username}"
EOF
    echo
done


for username in ${users};
do
    echo ssh "${username}"@54.183.80.165
done
