#!bin/bash
# needs imagemagick installed
echo "Converting.."
for pic in */*.jpg; do
  picname=$(basename $pic)
  if [ "$picname" != "preview.jpg" ]; then
      echo "$picname"
      convert $pic -filter Mitchell -resize 1024x1024\> $pic
  else
    echo "## skipping preview.jpg!!!"
  fi
done
echo "..to a 1024x1024 image"