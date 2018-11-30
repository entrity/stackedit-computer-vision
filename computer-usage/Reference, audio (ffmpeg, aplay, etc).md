## ffplay, ffmpeg

```bash
# This can work work PCM, WAV, etc.
ffplay $myfile -ar $samplerate -ac $channels -f $audioformat
```

### Audio formats

E.g. `f32be` is float 32-bit big-endian

`[f|s|u][8|16|24|32|64][be|le]`

The pattern is:

1. numeric type (f, s, u)
2. bit depth (8, 16, 24, 32, 64)
3. byte-endia

- f32be
- f32le
- 
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTg2NDIwMzYxOCwxNDIxMDIwMDcyXX0=
-->