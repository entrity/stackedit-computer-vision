## Print nth line from file

```bash
# Print nth line
sed -n "${n}p" $FILE
# Print mth and nth line
sed -n "${m}p;${n}p" $FILE
# Print lines m through n
sed -n "${m},${n}p" $FILE
```

## jq

```bash
# Get items from array which match parameters
jq '.[] | select(.property == "value")' $JSONFILE
# Get nth item from array
jq '.[3]' $JSONFILE
```
<!--stackedit_data:
eyJoaXN0b3J5IjpbMTIzMTI0MDUzNiw5MzkxODEwNl19
-->