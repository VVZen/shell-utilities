# shell-utilities
Various shell scripts I collected during these years for different aims, that mostly serve as template for future usages.

The scripts used for the conversion of images require **imagemagick** installed.

Every script was tested inside the **bash** shell in osx.

###convert_png_to_jpg.sh
Converts png into jpg.
Operates by default in the current folder.

### rename_012345_to_pano_faces.sh
The script will operate in the current terminal dir and will rename all "0.jpg" files to "pano_f.jpg" .
The full naming convention (based on panotour to krpano) is this:

0.jpg >> pano_f.jpg

1.jpg >> pano_r.jpg

2.jpg >> pano_b.jpg

3.jpg >> pano_l.jpg

4.jpg >> pano_u.jpg

5.jpg >> pano_d.jpg

###resize_panoImages_in_subfolder.sh
The script will look for all jpgs bigger than 1024x1024 in all subfolders of current script folder and will resize them to a 1024x1024 image using the Mitchell filter.
Images called "preview.jpg" or "thumb.jpg" won't be converted.

###rsync_branched_backup.sh
Rsync backup branched on different macs  (the scripts recognises the hw specs of the current mac). 

###export_png_from_qgis.sh
Use **QGIS** command line to save png at custom resolution from the current project view. 