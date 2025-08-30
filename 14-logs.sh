#!/bin/bash
USERID=$(id -u)
R = "\e[31m"
G = "\e[32m"
Y = "\e[33m"
N = "\e[0m"
LOGS_FOLDER = "/var/log/shell script-logs"
SCRIPT_NAME = $(echo $0 | cut -d "." -f1)
LOG_FILE = "$LOGS_FOLDER/$SCRIPT_NAME.log"
MKdir -p $LOGS_FOLDER
echo "script started executed at : $(date)" | tee -a $LOG_FILE 
if [$USERID -ne 0]
then
    echo -e "$R ERROR:: Please run this script with root access $N" | tee -a $LOG_FILE 
    exit1
else
    echo "your running with root access" | tee -a $LOG_FILE 
fi


validate(){
    if [$1 -eq 0]
    then
        echo  -e "installed $2 is...$G SUCCESS $N" | tee -a $LOG_FILE 
    else
        echo  -e "installed $2 is...$R FAILURE $N" | tee -a $LOG_FILE 
        exit1
    fi
}

dnf list installed mysql
if[$? -ne 0]
then
    echo "MYSQL is not installed going... to installed" | tee -a $LOG_FILE 
    dnf install MYSQL
    validate$? "MYSQL"
else
    echo -e "Nothing to do mysql..$y already insatll $N" | tee -a $LOG_FILE 
fi

dnf list installed python
if [$? -eq 0]
then
    echo "python is not installed going to installed" | tee -a $LOG_FILE 
    dnf install phython3 -y
    validate$? "phython3"
else
    echo -e "NOthing to do Python..$Y already installed $N" | tee -a $LOG_FILE 
fi

dnf lis installed nginx
if [$? -ne 0]
then
    echo "nginx is not installed going...to installed" | tee -a $LOG_FILE 
    dnf installed ngnix
    validate$? "nginx"
else
    echo -e "Nothing to do nginx..$Y already installed $N" | tee -a $LOG_FILE 
fi


