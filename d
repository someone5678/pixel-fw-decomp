#!/bin/bash

CWD=$(pwd)

for i in SettingsGoogle SystemUIGoogle;
do
    if [ -f $CWD/apks/${i}.apk ];
    then
        if [ -d $CWD/$i ];
        then
            mkdir -p old
            mv $i old/$i
        fi
        apktool -r d apks/${i}.apk
    fi
done
