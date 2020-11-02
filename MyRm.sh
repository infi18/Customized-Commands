#!/bin/bash

# @Author : Siddhi Naik
# The Shell Script "MyRm.sh" that runs a customized rm function 
#The function accepts multiple files and instead of deleting moves to a WasteBasket 

hostname=`hostname`

if [ -d WasteBasket ]; then
touch WasteBasket

else
mkdir WasteBasket
fi

if [ "$#" == 0 ]; then
echo "You have not entered the filename! "
echo "Please enter atleast one filename along with ./MyRm.sh command"
echo "usage : ./MyRm.sh filename"
exit 1
fi

Files="$@"
 
for file in $Files
do
if [ ! -f "$file" ]; then
echo "The filename you have entered cannot be found "
echo "Please Enter a Valid name !!"

elif [ -f "WasteBasket/$file" ]; then
mv $file WasteBasket/$$-$file
echo "Duplicate file $file found, from your System $hostname,"
echo "Moved to Waste Basket with random number"

elif [ ! -f "WasteBasket/$file" ]; then
mv $file WasteBasket
echo "File $file from your System $hostname moved to Waste Basket"
fi
done


exit 0 
