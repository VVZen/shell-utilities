## Requires bc installed for doing floating point math (check using "which bc")

# path to your QGIS binary
#qgisPath="/Applications/QGIS.app/Contents/MacOS/QGIS"
qgisPath="/usr/local/opt/qgis2/QGIS.app/Contents/MacOS/QGIS"
# output file name
cityName="napoli";
outputDir="/Volumes/LaCie3TBYas/CG/Works/mooma/cities/vector_maps/final/"$cityName"/";
fileName=$cityName"_export_qgis_3k_v2.png";
projectDir="/Volumes/LaCie3TBYas/CG/Works/mooma/cities/vector_maps/qgis/"$cityName"/";
projectName=$cityName"_for_rendering.qgs";
# change for your needs
sizeincm=30; dpi=300;
echo "--- saving screenshot in" $outputDir$fileName;
# compute width and height
w=$(echo "$sizeincm*$dpi/2.54" | bc -l);
h=$(echo "$sizeincm*$dpi/2.54" | bc -l);
# remove floating numbers
w=$(printf "%.0f" $w);
h=$(printf "%.0f" $h);
echo "print size:" $w"x"$h "pixels," $sizeincm"x"$sizeincm "cm," $dpi "dpi";
$qgisPath --snapshot $outputDir$fileName --width $w --height $h --project $projectDir$projectName;