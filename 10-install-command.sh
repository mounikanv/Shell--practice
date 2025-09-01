#!/bin/bash
USERID=$ (id -u)
if($USERID -ne 0)
then
    echo "Error:: please run thos script with root access ot not"
    exit1
else 
    echo "you are runnin g with root access"
fi

dnf list installed my sql
or not, if installed $? is 0, then
not 0. then exrastion is true
if ($? -ne 0)
then 
    echo "installing my sql is success"
else 
    echo "installing my sql is failure"
    exit1
fi
else
    echo "my sql is already installed nothing to do"
fi