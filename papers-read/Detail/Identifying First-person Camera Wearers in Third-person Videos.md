# [Identifying First-person Camera Wearers in Third-person Videos](http://vision.soic.indiana.edu/publications/)

# Actor and Observer: Joint Modeling of First and Third-Person Videos

**Task**: egocentric action understanding
**Problem**: lack of aligned 1st-person and 3rd-person video data

## Contributions

1. New dataset: **Charades-Ego**. 157 activity classes, 4000 video pairs (31.2 seconds long on avg)
2. New model: **ActionObserverNet**: aligns the two domains by learning a joint embedding in a weakly-supervised setting

### Charades-Ego dataset

Collected with AMT according to "Hollywood in Homes" method [37]. AMT-ers perform an activity from Charades twice: once while recording 1st-person, once while 3rd-person. (Videos are thus not identical.) Turkers also identify moments that are shared across the 2 videos in order to align them.

Datase

## Related Work

1. Most datasets are lab-collected and lack diversity, containing on a few subjects.
1. Other datasets are smaller by an order of magnitude
1. Recent datasets have used micro-videos from the internet, but these are not paired. 

Theory of mind says humans can put selves in another's shoes. This is done from egocentric perspective.
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTE4ODE1NzMwNzEsNDM4ODYwMDc2LDU0Mj
g4MzM5MywtMTczMDg0Njk5XX0=
-->