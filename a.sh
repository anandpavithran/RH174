#!/bin/bash
lab start convert-plan
ssh root@servera cp /tmp/convert2rhel.repo /etc/yum.repos.d/
ssh root@servera yum update -y 
ssh root@servera reboot
sleep 30
ssh root@servera yum install convert2rhel -y
lab finish convert-plan
