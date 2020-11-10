#!/bin/bash

groupadd admin

USER="eidam"
PASS="heslo"

echo $USER
echo $PASS

adduser $USER --gecos "Eidam Sumavsky,2,733623987,608263882" --disabled-password
echo $USER:$PASS | chpasswd
usermod -a -G admin $USER
