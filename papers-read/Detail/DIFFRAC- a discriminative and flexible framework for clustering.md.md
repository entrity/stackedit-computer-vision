<small>Bach, F., & Harchaoui, Z. (2008). DIFFRAC: a discriminative and flexible framework for clustering. _Advances in Neural Information Processing Systems 20_, 49–56.</small>

# DIFFRAC: a discriminative and flexible framework for clustering

**Problem**: Lots of tunable hyperparams for clustering: metric, similarity structure, number of clusters. 

**Recent work** use SVM cost function as clustering criterion. (Intuitively, find linearly separable clusters.) **Problem**: can't apply to more than few hundred data points. **Solution**: use hinge loss function to work with 10,000 data points.

### Algorithm
follow [1] and [2]. 

Let $I_k$ be the set of all possible indicator matrices ($M$). If a cell is 1, then the two points which it indicates (its row and column) are in the same cluster.

The **cost function** is basically a sum squared error $y - Xw$ where $y$ is a given instance of $I_k$. (There's also a regularization term, and a Frobenius norm.) This cost function provides a convex problem with a closed-form solution. (Its min can be analytically calculated.)

We can't just solve the cost function because we don't know $y$ (the correct cluster assignments). The cost is minimized when $trace(yy^t)\ A(X,\kappa)$ is minimized. This is NP-hard, but relaxations can lead to an efficient algorithm.

$E_k$ - the set of "$k$-class indicator matrices

#### Relaxations to NP-hard problem


<!--stackedit_data:
eyJoaXN0b3J5IjpbMTUwODM1NDk3XX0=
-->