https://arxiv.org/pdf/1807.07964.pdf
# Question-Aware Sentence Gating Networks for Question and Answering

E.g. question "‘What other role do many pharmacists play?’" requires high-level understanding across sentences.

> most of the existing approaches still focus on improving word-level information, but not directly utilize the higher-level semantics contained in, say, sentences and paragraphs

Approach: word vectors are a (gated) combination of the initial word-level vector and the encoding of the sentence containing said word. (Shouldn't they look at other sentences too? The example with the word 'other' suggests so to me.)

1. Sentence encoding: we first generate initial encoding vectors of individual sentences in the passage and the question.
2. Sentence matching: we further transform them into question-aware vectors by considering its degree of matching with the question.
3. Sentence gating: For each word, our gating module determines how much to add the
sentence information to it, and the new word-level encoding vector is computed accordingly as a convex combination of its original word vector and its corresponding sentence vector.
<!--stackedit_data:
eyJoaXN0b3J5IjpbMTQyNDUxMDY4XX0=
-->