#! /bin/bash

#Remove script ssh root login

o=`grep -i Permitrootlogin /etc/ssh/sshd_config | head -1 | awk '{print $2}'`
v1="#PermitRootLogin yes"
v2="PermitRootLogin no"
if [ $o = yes ]
then
sed -i "s/$v1/$v2/g" /etc/ssh/sshd_config
echo "permit root login has been disabled in `hostname`"
else
echo "permit root login already disabled in `hostname`"
fi
