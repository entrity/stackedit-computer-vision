## ffplay, ffmpeg

```bash
# This can work work PCM, WAV, etc.
ffplay $myfile -ar $samplerate -ac $channels -f $audioformat
```

### Audio formats
```bash
ffmpeg -formats | grep PCM
```

E.g. `f32be` is float 32-bit big-endian

The pattern is `[f|s|u][8|16|24|32|64][be|le]`:
1. numeric type (f, s, u)
2. bit depth (8, 16, 24, 32, 64)
3. byte-endianness

<!--stackedit_data:
eyJoaXN0b3J5IjpbLTg1OTAxNDE2NiwxNTQ3NzU4ODQyLDE0Mj
EwMjAwNzJdfQ==
-->