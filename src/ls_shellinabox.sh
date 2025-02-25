#!/bin/bash
HOST=`cat host.txt`
# Define the green color
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
# Reset color
NC='\033[0m' # No Color
echo -e $GREEN
cat art.txt
echo -e $NC
echo "This is a collection of legendary unix terminal games and apps"
echo "This is using a tool called 'shellinabox' to run these programs directly on a real linux server"
echo "You can run these programs by clicking on the links below"
echo -e "\nAvailable Programs:"
echo -e "___________________\n"
echo -e $YELLOW
cat shellinabox | grep "\-s '" | awk -F'/' '$2 != "list" {print "'$HOST'/" $2}'
echo -e $NC
echo -e "\n--end of listing--"
echo "\nCollection created by Mathieu Dombrock"
sleep 9999

