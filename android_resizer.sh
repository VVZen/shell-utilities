#!bin/bash
# needs imagemagick installed 
for pic in *.png; do
  picname=$(basename $pic)
  # strip the extension, use the dot as delimiter
  picname=$(echo $picname | cut -f 1 -d '.')
  echo $picname
  mogrify "$pic" -resize 1024x1024\> $picname"
  #convert "$pic" -resize 1024x1024\> $picname"_half.png"
  #convert "$pic" -resize 542x442 "mdpi/$picname"
done