#!/bin/bash

CWD=$(pwd)

for i in SettingsGoogle SystemUIGoogle;
do
    if [ -f $CWD/${i}.apk ];
    then
        if [ -d $i ];
        then
            mkdir -p old
            mv $i old/$i
        fi
        apktool -r d ${i}.apk
        mv apks/$i $CWD/$i
    fi
done
