# BERT: Pre-Training of Deep Bidirectional Transformers for Language Understanding

*Issue*: "The major limitation is that standard language models are unidirectional, and this limits the choice of architectures that can be used during pre-training"

Background: Pre-training is already common. And Transformers are too. For a description of the **model architecture**, see Vaswani et al (2017) and "The Annotated Transformer"

Contributions:
1. demonstrate the importance of pre-training
2. pre-trained representations eliminate the needs of many heavily-engineered task-specific architectures
3. advances the state-of-the-art for eleven NLP tasks

$L$ = number of layers (i.e Transformer blocks)
$H$ = the hidden size
$A$ = number of self-attention heads

In literature, *bidirectional Transformer* is often called "Transformer encoder" and *left-context-only Transformer* is called "Transformer decoder" because it can be used for text generation.

##
<!--stackedit_data:
eyJoaXN0b3J5IjpbMTAzMjAwMTY3NV19
-->