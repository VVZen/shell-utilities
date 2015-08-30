# Rsync backup branched on different macs
MAC_PRO="hw.model: MacPro6,1"
MACBOOK_PRO="hw.model: MacBookPro8,2"
# sysctl returns the model of our mac
CURRENT_MAC=$(sysctl hw.model)
echo $CURRENT_MAC
if [ "$CURRENT_MAC" == "$MAC_PRO" ]; then
	echo "-- Starting Backup of Mac Pro --"
    # Here's a sample rsync command, remove the first # to uncomment:
    # rsync -avzPi --delete "/Users/yourname/Test\ Source\ Folder/" "/Users/yourname/Test\ Target\ Folder/"
else 
    echo "-- Starting Backup of MacBook Pro --"
    # Here's a sample rsync command, remove the # to uncomment:
    # rsync -avzPi --delete "/Users/yourname/Test\ Source\ Folder/" "/Users/yourname/Test\ Target\ Folder/"
fi
