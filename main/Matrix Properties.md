# Matrix Properties

- **Invertible**
    - **Symmetric**
        - All eigenvalues are real
        - **Positive Definite**
            - All eigenvalues are positive
            - $x^T A x$ is positive, even if $x$ is not an eigenvector
            - _if: All pivots have the same sign_
            - iff: can be written $A = R^T R$ where $R$ has independent columns
        - **Positive Semidefinite**
            - All eigenvalues are nonnegative

## Eigenvalues and Eigenvectors

- The _determinant_ of _A_ is the product of its _eigenvalues_.
- The _trace_ of _A_ is the sum of its _eigenvalues_.

## Definitions

singular values
: the square roots of the eigenvalues of [A^(H)A](http://mathworld.wolfram.com/images/equations/SingularValue/Inline2.gif), where ![A^(H)](http://mathworld.wolfram.com/images/equations/SingularValue/Inline3.gif) is the [conjugate transpose](http://mathworld.wolfram.com/ConjugateTranspose.html),
spectrum
: the set of a matrix's eigenvalues
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTEyMDQzMzkxNl19
-->