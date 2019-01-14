## ffplay, ffmpeg

### Play audio
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

### Misc
```bash
# Video to images
ffmpeg -loglevel warning -i "$vid" "${OUTDIR}/${name}-%05d.jpg" -hide_banner
# Video frame rate
ffprobe -v 0 -of csv=p=0 -select_streams V:0 -show_entries stream=r_frame_rate infile
```

## aplay, arecord

```bash
aplay [-f $format] $audiofile
```

Recognized  sample formats are: S8 U8 S16_LE S16_BE U16_LE U16_BE S24_LE S24_BE U24_LE U24_BE S32_LE S32_BE U32_LE U32_BE FLOAT_LE FLOAT_BE FLOAT64_LE FLOAT64_BE IEC958_SUBFRAME_LE IEC958_SUBFRAME_BE MU_LAW A_LAW IMA_ADPCM MPEG GSM SPECIAL S24_3LE S24_3BE U24_3LE U24_3BE S20_3LE S20_3BE  U20_3LE  U20_3BE  S18_3LE  S18_3BE U18_3LE

<!--stackedit_data:
eyJoaXN0b3J5IjpbLTIwODkwNzIzMjAsLTE0Mjg4NTUzMDJdfQ
==
-->