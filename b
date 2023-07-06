#!/bin/bash

CWD=$(pwd)

for i in SettingsGoogle SystemUIGoogle;
do
    if [ -d $CWD/$i ];
    then
        apktool b $i
    fi
done
