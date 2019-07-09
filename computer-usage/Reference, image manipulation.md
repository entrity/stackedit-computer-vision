## https://www.photopea.com/

Online image editor with tools similar to gimp

## GIMP to PDF

1. save file as `.mng` filetype
2. ensure imagemagick permissions for pdf
3. `convert -reverse <infile.mng> <outfile.pdf>`

### Permissions
Edit `/etc/ImageMagick-6/policy.xml` so that the line giving no rights to PDF is commented out.
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTE5NTE1NzQzNDEsMTkyMjY4NjU0OV19
-->