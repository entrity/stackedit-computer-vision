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

## Method

**Input embedding**
Input embedding is sum of (1) token embedding (WordPiece), (2) positional embedding (for position of token in sequence), (3) segmentation embedding (whether token belongs to sentence A or sentence B).

**Pre-training tasks**
(1) Masked LM (alias "Cloze"). Standard conditional language models cannot be trained bidirectionally (except by concatenating two independently trained models that look in opposite directions) because bidirectional conditioning would allow each word to see itself (that's bogus conditioning there). Therefore, we mask some percentage of input tokens at random and then predict only those masked tokens. Masking replaces an input token with a `[MASK]` token or with a random word (or does nothing at all). Then the LM predicts only the targeted words (not the entire sequence).

(2) Next Sentence Prediction. Given two sentences $A$ and $B$, predict whether $B$ is indeed the the sentence that follows $A$ in the corpus. (This
<!--stackedit_data:
eyJoaXN0b3J5IjpbMTc3NTg0NzIxNiwxMDA4NzQ5NzAxXX0=
-->