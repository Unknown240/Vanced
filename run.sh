clear
echo " ReVanced Builder & Patch "

echo " 1. Start Vanced "
echo " 2. Update Vanced "
echo " 3. Reinstall Vanced "
echo -e 
echo " e. Exit "

echo " Choice :"

read mrrm
if [ $mrrm = 1 ] || [ $mrrm = 1 ] 
then
curl -sLo revanced-builder.sh https://raw.githubusercontent.com/reisxd/revanced-builder/main/android-interface.sh
chmod +x revanced-builder.sh
mv revanced-builder.sh .revanced-builder.sh
bash .revanced-builder.sh
fi

if [ $mrrm = 2 ] || [ $mrrm = 2 ]
then 
bash .revanced-builder.sh update
bash run.sh
fi

if [ $mrrm = 3 ] || [ $mrrm = 3 ]
then
bash .revanced-builder.sh reinstall
fi

if [ $mrrm = e ] || [ $mrrm = E ]
then
echo -e " SEE U "
sleep 3
reset
clear
exit
fi
