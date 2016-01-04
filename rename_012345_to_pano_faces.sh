#!bin/bash
# Renames 0,1,2,3,4,5 to pano faces and thumbnail.jpg to thumb.jpg
prefix="pano"
echo "\n\t\t##### STARTED RENAMING #####"
for pic in */*.jpg; do
    picname=$(basename $pic)
    foldername=$(dirname $pic)
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
    if [ "$picname" == "thumbnail.jpg" ]; then
        oldname=$foldername"/"$picname
        newname=$foldername"/thumb.jpg"
        echo "Renaming" $oldname "to" $newname
        mv $oldname $newname
    fi
done
echo "\t\t##### ENDED RENAMING #####"
echo "\n"