#!/bin/bash
#Created By: Greg Doyle
#Purpose:  Burn iso's in Gentoo, I have a minimal desktop :)
#Date: 11/17/2012

echo 'cdrecord is probing for your cd/dvd writer'
cdrecord --scanbus
#sleep 1
echo "Enter each number and press ENTER:"
read A
read B
read C
#echo "Is this the correct selection dev=$A,$B,$C"
echo "Enter the full path of your iso.  e.g. /home/user/Downloads/awesome.iso"
read D
echo "cdrecord -v -pad speed=10 dev=$A,$B,$C $D"
echo "cdrecord is about to burn the iso to your disc.  Do you wish to proceed?  [ENTER 1) for YES or 2) for NO]:"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) cdrecord -v speed=8 dev=$A,$B,$C $D; break;;
        No ) exit;;
    esac
done
echo "worked"
