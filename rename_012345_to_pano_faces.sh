#!bin/bash
prefix="pano"
echo "\n\t\t##### STARTED RENAMING #####"
for zero in */*.jpg; do
    picname=$(basename $zero)
    foldername=$(dirname $zero)
    if [ "$picname" == "0.jpg" ]; then
        oldname=$foldername"/"$picname
        newname=$foldername"/"$prefix"_f.jpg"
        echo "Renaming" $oldname "to" $newname
        mv $oldname $newname
    fi
    if [ "$picname" == "1.jpg" ]; then
        oldname=$foldername"/"$picname
        newname=$foldername"/"$prefix"_r.jpg"
        echo "Renaming" $oldname "to" $newname
        mv $oldname $newname
    fi
    if [ "$picname" == "2.jpg" ]; then
        oldname=$foldername"/"$picname
        newname=$foldername"/"$prefix"_b.jpg"
        echo "Renaming" $oldname "to" $newname
        mv $oldname $newname
    fi
    if [ "$picname" == "3.jpg" ]; then
        oldname=$foldername"/"$picname
        newname=$foldername"/"$prefix"_l.jpg"
        echo "Renaming" $oldname "to" $newname
        mv $oldname $newname
    fi
    if [ "$picname" == "4.jpg" ]; then
        oldname=$foldername"/"$picname
        newname=$foldername"/"$prefix"_u.jpg"
        echo "Renaming" $oldname "to" $newname
        mv $oldname $newname
    fi
    if [ "$picname" == "5.jpg" ]; then
        oldname=$foldername"/"$picname
        newname=$foldername"/"$prefix"_d.jpg"
        echo "Renaming" $oldname "to" $newname
        mv $oldname $newname
    fi
done
echo "\t\t##### ENDED RENAMING #####"