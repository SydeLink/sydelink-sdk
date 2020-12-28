#!/bin/bash

SDKDIR="/home/brain/SydeLink/sydelink-sdk"
IMAGENAME="sydelink-sdk:latest"

clear

echo ""
echo "<SydeLink> - <Docker - Start>"

if [[ "$(docker images -q $IMAGENAME 2> /dev/null)" == "" ]]; then
    echo "  -$IMAGENAME doesn't exist..."
    echo "  -Building image based on dockerfile"
    sudo docker build -t $IMAGENAME -f ./docker/Dockerfile .
else
    echo "  -Existing Image: $IMAGENAME "
fi

echo "-----------------------------------"
echo " COPY & PASTE INTO TERMINAL"
echo ""
echo " docker run --privileged -it -v $SDKDIR:/slSDK sydelink-sdk:latest /bin/bash"
echo ""
echo "-----------------------------------"
echo ""

# COPY & PASTE INTO TERMINAL
# docker run --privileged -it -v /home/brain/SydeLink/sydelink-sdk:/slSDK sydelink-sdk:latest /bin/bash