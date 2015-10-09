#!bin/bash
# Shell script to remake original image from tiles
##################################################
# Existing output path where it will save the resulting face images
outputPath='/Volumes/YASKEBASI/ignaziodata/ignazio/TEST'
cd $outputPath || exit
echo "\nSaving in" $outputPath
echo "Is this correct path (y/n)? "
read answer
if [ "$answer" == y ]; then
  echo "Yes!"
  #up
  /your/path/to/krpanotools maketiles /your/path/to/the/tiles/l5_u_%0v_%0h.jpg pano_u.tif 0 -insize=8432x8432 -intilesize=527 -inindexbase=1
  #down
  /your/path/to/krpanotools maketiles /your/path/to/the/tiles/l5_d_%0v_%0h.jpg pano_d.tif 0 -insize=8432x8432 -intilesize=527 -inindexbase=1
  #front
  /your/path/to/krpanotools maketiles /your/path/to/the/tiles/l5_f_%0v_%0h.jpg pano_f.tif 0 -insize=8432x8432 -intilesize=527 -inindexbase=1
  #back
  /your/path/to/krpanotools maketiles /your/path/to/the/tiles/l5_b_%0v_%0h.jpg pano_b.tif 0 -insize=8432x8432 -intilesize=527 -inindexbase=1
  #right
  /your/path/to/krpanotools maketiles /your/path/to/the/tiles/l5_r_%0v_%0h.jpg pano_r.tif 0 -insize=8432x8432 -intilesize=527 -inindexbase=1
  #left
  /your/path/to/krpanotools maketiles /your/path/to/the/tiles/l5_l_%0v_%0h.jpg pano_l.tif 0 -insize=8432x8432 -intilesize=527 -inindexbase=1
else
  exit
fi