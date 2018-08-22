# Faster R-CNN: Towards Real-Time Object Detection with Region Proposal Networks

Ross Girshik and Kaiming He are back. 

**Bottom line**: region proposals are the computational bottleneck. Achieve speed improvement over Fast R-CNN by using *Region Proposal Networks* (instead of external method like *Selective Search* or *EdgeBoxes*).

**Region Proposal Networks**
Dispense with *Selective Search* and compute proposals in the deep net. *RPN* is just a ConvNet with two additional (FC) layers.

The training scheme alternates between updating the region proposal task and updating for object detection. End-to-end.

RPN slides over feature map output from previous layer. There is a single intermdiate layer, followed by a pair of layers (one for BB regression and one for BB classification as 'object' vs 'not object'). The *cls* output holds two values giving probability of 'object' vs 'not object'; the *reg* output holds 4 values giving the BB. At each sliding position, the RPN gives k proposals.

The two RPN layers are a 3x3 conv followed by two 1x1 convs (for *reg* and *cls*).

Proposal BBs are given relative to the sliding anchor. At each anchor, the paper uses 3 scales and 3 aspect ratios for $k = 9$ proposals.

**Speedup**: achieves 5fps.

**Training examples** Only use positive examples that have IoU with ground truth > 0.7 (if none, just highest example for a given gt); only use negative examples with IoU < 0.3.

**4-step training algorithm to learn shared features via alternating optimization**:
1. Fine-tune an RPN for the region proposal task.
2. Fine-tune a (Fast R-CNN) model using the proposals from the step-1 RPN.
3. Combine 1 & 2. Fix the conv layers; fine-tune the RPN layers.
4. Fine-tune the FC layers at the end of the Fast R-CNN (2) into which the RPN (1) was inserted.
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTEzMDAxMTQ1NjJdfQ==
-->