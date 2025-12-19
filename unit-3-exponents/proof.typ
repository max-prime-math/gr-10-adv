#set page(
width: 3.5in,
height:auto)
#show raw.where(block: true): it => pad(left: 3em, it)

= Proof that $sqrt(2)$ is Irrational
#line(length: 100%)
This is an alternative proof, which may be harder to understand, but easier to remember.
\ \
Suppose toward a contradiction that $sqrt(2)$ is rational.  Then:
#block(
  inset: 10pt,
$
sqrt(2) &= a/b \
sqrt(2) dot b &= a \
(sqrt(2)dot b)^2 &= (a)^2 \
2 dot b^2 &= a^2.
$
  )
Now ask: how many prime factors are on each side of the equation?
\ \
Since squaring a number _doubles_ the number of prime factors, $a^2$ has an _even_ number of prime factors.
\ \
On the other hand, $b^2$ has an even number of factors, therefore $2 dot b^2$ must have an _odd_ number of prime factors.
\ \ 
Since a number cannot have _both_ an odd number of prime factors and an even number of prime factors, our original assumption must be a contradiction.
