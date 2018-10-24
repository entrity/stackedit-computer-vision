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

(2) Next Sentence Prediction. Given two sentences $A$ and $B$, predict whether $B$ is indeed the the sentence that follows $A$ in the corpus. (This takes place *with* masked input tokens, applied for the MLM task.)

## NB

"Increasing the model size will lead to ... improvements ..., which is demonstrated by the LM perplexity of held-out training data." Wow! I had no idea perplexity gave us insight into this. (I need to re-learn what perplexity is.)

A span prediction task (such as isolating the answer to a question in a paragraph of text) is different from sequence classification tasks. In this paper, we learn additional parameters of a *start vector* $S \in \R^H$ and an *end vector* $E \in \R^H$ The final hidden vector from BERT for the $i^{th}$ token is $T_i \in \R^H$. Then, the probability of word $i$ being the start of the answer span is computed as a dot product between the (learned) $S$ and $T_i$, followed by a softmax over all the words in the paragraph. The same formula is used for the end of the answer span.
<!--stackedit_data:
eyJoaXN0b3J5IjpbMTE0NzY0MTI0MSw4MDMxMDUzNDksLTEyOD
AxNDM3MzUsMTAwODc0OTcwMV19
-->