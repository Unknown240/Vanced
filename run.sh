#!/bin/bash
clear
echo " ReVanced Builder & Patch "

echo " 1. Build Vanced "
echo " 2. Update Vanced "
echo " 3. Reinstall Vanced "
echo " 4. Advanced "
echo " 5. Help "
echo -e
echo " e. Exit "

echo " Choice :"

read mrrm
if [ $mrrm = 1 ] || [ $mrrm = 1 ]; then
    curl -sLo revanced-builder.sh https://raw.githubusercontent.com/reisxd/revanced-builder/main/android-interface.sh
    chmod +x revanced-builder.sh
    mv revanced-builder.sh .revanced-builder.sh
    bash .revanced-builder.sh run
fi

if [ $mrrm = 2 ] || [ $mrrm = 2 ]; then
    bash .revanced-builder.sh update
    bash run.sh
fi

if [ $mrrm = 3 ] || [ $mrrm = 3 ]; then
    bash .revanced-builder.sh reinstall
fi

if [ $mrrm = 4 ] || [ $mrrm = 4 ]; then
    echo " 1. Delete Cache "
    echo " 2. Delete Keystore "
    echo -e
    echo " e. Back "

    echo " Choice :"

    read mrrmm
    if [ $mrrmm = 1 ] || [ $mrrmm = 1 ]; then
        bash .revanced-builder.sh run --delete-cache
    fi
    if [ $mrrmm = 2 ] || [ $mrrmm = 2 ]; then
        bash .revanced-builder.sh reinstall --delete-keystore
    fi
    if [ $mrrmm = e ] || [ $mrrmm = e ]; then
        bash run.sh
    fi
fi

if [ $mrrm = 5 ] || [ $mrrm = 5 ]; then
    bash .revanced-builder.sh help
fi

if [ $mrrm = e ] || [ $mrrm = E ]; then
    echo -e " SEE U "
    sleep 1
    reset
    clear
    exit
fi
