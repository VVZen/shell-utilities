#!bin/bash
#Generates a vtour based on the images passed (one spherical or six cubic faces)
krpanoPath='/Volumes/LaCieDEV_Yas/Code/Works/paolorolli_insider/krpano-1.19-pr3/'
cd $krpanoPath
./krpanotools makepano -config=templates/vtour-normal.config -panotype=autodetect /Volumes/YASKEBASI/ignaziodata/ignazio/TEST/pano_b.tif /Volumes/YASKEBASI/ignaziodata/ignazio/TEST/pano_d.tif /Volumes/YASKEBASI/ignaziodata/ignazio/TEST/pano_f.tif /Volumes/YASKEBASI/ignaziodata/ignazio/TEST/pano_l.tif /Volumes/YASKEBASI/ignaziodata/ignazio/TEST/pano_r.tif /Volumes/YASKEBASI/ignaziodata/ignazio/TEST/pano_u.tif