## Visual Question Answering with Memory-Augmented Networks
*2018 CVPR*

The highlights are that they use **co-attention** and **external memory**. The computation of the weights for writing to memory is notable b/c it doesn't overzealously overwrite scarcely fetched data (crucial for long-tail).

They think the use of external memory will make the system work better for rarely-seen training examples. And there should be a lot of rarely-seen examples because VQA is __heavy-tailed__. (Think of all the different questions you can ask about an image.)

### Co-attention

They build a feature vector which is the concatenation of visual and question features.

Visual features are a weighted sum of the features extracted at each 14x14 region from a 448x448 image $v_n$. (Last or penultimate layer of a CNN.)

Question features are a weighted sum of a bidirectional LSTM as each input word passes through it in sequence. (The bi-directional states $h^+_t$ and $h^-_t$ are concatenated to make $q_t$.)

Weights for each are a function of an element-wise product of the granular features ($v_n$ or $q_t$) with a base vector $m_0$, which is an element-wise product of an average of the $q_t$ and $v_n$ vectors. (What does $m_0$ mean?)

Same or similar design attributed to [20].

### Memory Augmented Network
An LSTM serves as controller which receives the feature vector and reads/writes on external memory $M_t$. (How big?)

$$h_t = LSTM([v_t,q_t], h_{t-1})$$

#### > Reading
Cosine distance for $h_t$ with each row in the memory produces read weights. Reading is a weighted sum of memory. (What if memory were read by feeding each row into an LSTM instead?)

Concatenate read vector with controller state to provide input to the classifier $[r_t,h_t]$.

#### > Writing
The aim is to strike a balance: previous work seeks to not overwrite recently fetched data, but for heavy-tailed work, we also avoid writing scarcely fetched data. We write the previous hidden state.

The weights $w^u$ for how much each memory cell gets written are the sum of three terms: (1) a decay of the previous $w^u$, (2) the read weight, (3) a write weight.

The write weight is a function of the previous weights at the previous timestep, where parameters $\gamma$ and $n$ adjust the rate of writing.

### Answering

Pass the vector $[r_t,h_t]$ to a 2-level MLP, which produces answers.

### Performance

It is state of the art for about half of the benchmarks, but usually by less than 1 point.
An ablation study reveals that learning with external memory does not improve performance except when the first many answers are counted for the correct answer. (Using top `	3000 answers shows benefit from memory, but 2000 and 1000 do not).
<!--stackedit_data:
eyJoaXN0b3J5IjpbMjA5MjQxMTQ2N119
-->