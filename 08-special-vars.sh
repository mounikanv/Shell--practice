#!/bin/bash
echo "all variables passed to the script: $@"
echo "Number of variables: $#"
echo "Script name: @0"
echo "current directory: $pwd"
echo "User running this script: $USER"
echo "Home directory of user: $HOME"
echo "PID of the script: $$"
echo 10 &
echo "pid of the laste command in background: $!"