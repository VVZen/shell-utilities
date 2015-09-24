# shell-utilities
Various shell scripts I collected during these years for different aims

### maya_batch_render.sh
This script will simply render a maya scene to specified path.

Can be useful for queuing multiple scenes on the same machine.

### rename_012345_to_pano_faces.sh
The script will operate in the current terminal dir and will rename all "0.jpg" files to "pano_f.jpg" .
The full naming convention (based on panotour to krpano) is this:

0.jpg >> pano_f.jpg

1.jpg >> pano_r.jpg

2.jpg >> pano_b.jpg

3.jpg >> pano_l.jpg

4.jpg >> pano_u.jpg

5.jpg >> pano_d.jpg
