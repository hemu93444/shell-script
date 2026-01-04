#!/bin/bash
ID=$(id -u)
if [ $ID -ne 0 ]
then
echo "Error:Please run with root access"
exit 1
else
echo "you are root user"
fi
yum install mysql -y
if [ $? -ne 0 ]
then
echo "Error:My sql installing is failed"
exit 1
else
echo "installing my sql is success"
fi

yum install git -y
if [ $? -ne 0 ]
then
echo "Error: Git installation got failed"
exit 1
else
echo "Installing Git is scuccess
fi