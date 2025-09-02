#!/bin/bash
USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
if [ SERID -ne 0 ]
then
    echo -e "$R ERROR:: Please run this script with root access $N"
    exit1
else
    echo "your running with root access"
fi


validate(){
    if [$1 -eq 0]
    then
        echo  -e "installed $2 is...$G SUCCESS $N"
    else
        echo  -e "installed $2 is...$R FAILURE $N"
        exit1
    fi
}

dnf list installed mysql
if [ $? -ne 0 ]
then
    echo "MYSQL is not installed going... to installed"
    dnf install MYSQL
    validate$? "MYSQL"
else
    echo -e "Nothing to do mysql..$y already insatll $N"
fi

dnf list installed python
if [ $? -ne 0 ]
then
    echo "python is not installed going to installed"
    dnf install phython3 -y
    validate$? "phython3"
else
    echo -e "NOthing to do Python..$Y already installed $N"
fi

dnf lis installed nginx
if [ $? -ne 0 ]
then
    echo "nginx is not installed going...to installed"
    dnf installed ngnix
    validate$? "nginx"
else
    echo -e "Nothing to do nginx..$Y already installed $N"
fi


