# path to your QGIS binary
qgisPath="/Applications/QGIS.app/Contents/MacOS/QGIS"
#include extension
fileName="test_roma_2.png";
outputDir="/Users/valerioviperino/Desktop/";
w=4000; h=4000;
# include extension
projectName="roma.qgs";
projectDir="/Volumes/LaCie3TBYas/CG/Works/mooma/cities/vector_maps/qgis/roma/";

echo "saving screenshot in" $outputDir$fileName;
$qgisPath --snapshot $outputDir$fileName --width $w --height $h --project $projectDir$projectName;