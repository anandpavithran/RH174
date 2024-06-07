#!/bin/bash
lab start convert-plan
ssh root@servera cp /tmp/convert2rhel.repo /etc/yum.repos.d/
ssh root@servera yum update -y 
reboot
sleep 60
lab finish convert-plan
