# Joint Person Segmentation and Identification in Synchronized First- and Third-person Videos

**Scenario**: Multiple first-person cameras and third-person cameras, all synchronized.

### Goals
1. Segment each person in the videos ("third-third problem")
2. Identify matches between segments that correspond to the same person across different views ("third-third problem")
3. Identify the segments that correspond to the wearer of each first-person camera ("third-first problem")

### Distinctions
1. Perform segmentation and matching jointly for mutual benefit

### Model
Two-stream architecture: visual (RGB frames) & motion (optical flow fields).
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTEwNzUxODI5MjVdfQ==
-->