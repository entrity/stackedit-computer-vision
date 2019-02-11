## Print nth line from file

```bash
# Print nth line
sed -n "${n}p" $FILE
# Print mth and nth line
sed -n "${m}p;${n}p" $FILE
# Print lines m through n
sed -n "${m},${n}p" $FILE
```
<!--stackedit_data:
eyJoaXN0b3J5IjpbOTM5MTgxMDZdfQ==
-->