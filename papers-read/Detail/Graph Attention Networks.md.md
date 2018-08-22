<small>**Graph Attention Networks: Petar Veličković, Guillem Cucurull, Arantxa Casanova, Adriana Romero, Pietro Liò, Yoshua Bengio, ICLR 2018 (https://openreview.net/pdf?id=rJXMpikCZ)**</small>
# Graph Attention Networks

When given graph-structured data instead of grid-structured data, a CNN design is not straightforward. Authors introduce an attention-based architecture for classification on graph data: compute hidden representations of node based on their neighbours.

You feed a node and its neighbourhood into a 2-layer feed-forward network. At the middle, it computes features; at the end, it predicts a class label.

The paper runs a fully-supervised classification task. It does not incorporate edge features (graph edge costs).

### Graph Attention Layer

All layers are *graph attention layers*. Take all nodes in the neighborhood, including the node to be classified. (The writers only use first-order neighbours to comprise the neighborhood.) Linearly transform the nodes, take a weighted sum, and pass it through a nonlinearity (such as sigmoid).

$$h_i = \sigma(\sum_{j \in N} \alpha_{ij}Wh_j)$$

The linear transform $W$ and certain coefficients $a$ are both learned (backprop) and used to computed the coefficients $\alpha$ (attention).

### Also

The writers experiment with *multi-head attention*: multiple $W$-plus-$\alpha$ combinations learned simultaneously, whose outputs are concatenated. (This can be thought of a little like ensemble learning at a different level, but there's no winner-take-all until the last layer because all heads' output is sent to the next layer. And of course, it's not ensemble learning because all the models learn at the same time from every example.)

### Performance

They meet or exceed state of the art.

### (Questions)

- Why do they use softmax instead of just fraction in equation (2)?
- Would they do better if they used two different $W$'s: one for computing $\alpha$ and one for linear transformation in (4)?
- The writers don't explore where the trade-off between having more feature dimensions and having more attention heads lies. That might be worth putting in a paper.
- The writers say "extending the model to incorporate edge features ... would allow us to tackle a larger variety of problems." This may be worth figuring out. But it looks like edge features would just get incorporated into the feature vector.
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTE2MzkxMDI4MzFdfQ==
-->