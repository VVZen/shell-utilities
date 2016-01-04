#!bin/bash
# needs imagemagick installed
echo "Converting to a 1024x1024 image.."
for pic in */*.jpg; do
  picname=$(basename $pic)
  if [ "$picname" != "preview.jpg" ] && [ "$picname" != "thumb.jpg" ]; then
      echo "$picname"
      convert $pic -filter Mitchell -resize 1024x1024\> $pic
  else
    echo "## skipping thumb/preview.jpg!!!"
  fi
done