#import "/template-files/inscight-template.typ": *

#let title = "Integer Partitions in Three Acts: Combinatorics, Number Theory, and Analysis"
#let authors = ("Koustav Banerjee",)
#let affiliations = ("Postdoctoral Researcher, University of Cologne",)
#let abstract = "This article explores the mathematics of integer partitions, a simple counting problem with deep consequences. Beginning with Euler’s ideas, we trace how the subject evolved through the work of Hardy, Ramanujan, and Rademacher. The story shows how combinatorics, number theory, and analysis come together to reveal the hidden structure behind counting numbers."
#let coverImage = "koustav.svg"
#let authorImage = "koustav.jpeg"
#let authorInfo = "*Koustav Banerjee* has obtained his doctoral degree from Research Institute of Symbolic Computation (RISC), Johannes Kepler University, Austria under supervision of Prof. Peter Paule. After spending one year and nine months as a postdoctoral fellow under mentorship of Prof. Paule, he has joined Prof. Kathrin Bringmann's group.  Since November, 2024, he is working as a post-doc at University of Cologne with Prof. Bringmann."
#let refsFile = "/dataFiles/koustavRefs.yaml"
#let received = (month: 12, day: 18, year: 2025)
#let category = "Mathematics"
#let reviewedBy = ()

#show: article.with(
  issueDetails: yaml("/dataFiles/issueData.yml"),
  title: title, 
  authors: authors,
  authorAffiliations: affiliations,
  abstract: abstract,
  coverImage: "/covers/" + coverImage,
  // sideImageFraction: 48%,
  authorImage: "/authFaces/" + authorImage,
  authorInfo: authorInfo,
  // authorImageWidth: (40%,40%),
  refsFile: refsFile,
  received: received,
  reviewedBy: reviewedBy,
  breakAfter: (7,),
)

// begin. This is necessary for typst-to-html conversion, do not remove this.

#set heading(numbering: "1")

#show heading.where(level: 2): it => {
  counter(math.equation).update(0)
  it
}

#set math.equation(
  numbering: it => {
    let sec = int(counter(heading).display())
    "(" + str(sec) + "." + str(it) + ")"
  }
)

== The Partition Function: \ A Combinatorial Genesis

#dcap("Primarily, there are two ways of decompose a natural number. One way is multiplicative, precisely, factoring a number into primes and other way is additive. In this section, we discuss the additive decomposition in brevity. This additive decomposition is well-known as “integer partitions”. In the history of the literature on partitions, Leibniz seems to be the first person who defined integer partitions. In a 1674 letter [12, page 37], he asked J. Bernoulli about the number of “divulsions” of an integer. In modern terminology, “divulsion” is rephrased as the number of partitions of a positive integer. Leibniz observed that there are three partitions of 3 counted by 3, 2 + 1, 1 + 1 + 1, five partitions of 4 counted by 4, 3 + 1, 2 + 2, 2 + 1 + 1, 1 + 1 + 1 + 1, seven partitions of 5 and eleven partitions of 6. This examples lead to a problem which is still open:")

#quote([Are there infinitely many integers `n` for which the total number of partitions of `n` is a prime?])

Keeping this question aside, let us move on define the partition function.

A _partition_ of a positive integer `n` is a finite non-increasing sequence of positive integers `lambda_1,dots,lambda_r` such that `sum_(j=1)^(r)lambda_j=n`. The `lambda_j` are called the parts of the partition. The partition `(lambda_1,lambda_2,dots,lambda_r)` is denoted by `lambda`, and we write `lambda tack.r n` to denote that `lambda` is a partition of `n`. The partition function `p(n)` is the number of partitions of `n`. The set of all partitions of `n` is denoted by `P(n)`. Euler undertook a rigorous and systematic investigation of the theory of partitions. Ph. Naude\u{0301} `[6]` wrote a letter to Euler asking about the number of partitions of `n` with the total number of parts in each partition being `m`. Precisely the question of Naude\u{0301} was: what is the total number of partitions of `50` into seven distinct parts? It is quite unlikely to get the total number by writing down all the partitions of `50` into seven distinct parts. To avoid this, Euler introduced the concept of generating functions. Let `p_m(n)` denote the number of partitions of `n` into `m` parts. Then following Euler's observation, we get

```
limits(sum)_(m,n gt.eq 0) p_(m)(n) z^m q^n &= limits(product)_(k=1)^(infinity) (1+"zq"^k) \ 
&= (1+"zq") limits(product)_(k gt.eq 1) (1+("zq")q^k) \
&= (1+"zq") limits(sum)_(m,n gt.eq 0) p_(m)(n) z^m q^(m+n).
```

Comparing the coefficients of `z^m q^n` on both sides of the above identity, we find the following recursive formula

```
p_m (n) = p_m (n-m) + p_(m-1) (n-m),
```

which gives `p_7(50)=522`. Euler proceeded further to obtain a generating function for `p(n)`. Euler's calculation can be put in the following way:

```
P(q) :&= limits(sum)_(n gt.eq 0) p(n) q^n \ 
&= (1 + q^1 + q^(1+1) + dots)(1 + q^2 + q^(2+2) + dots) \ 
& space space space (1 + q^3 + q^(3+3) + dots) dots \
&= limits(product)_(n gt.eq 1) (1 + q^n + q^(n+n) + dots) = limits(product)_(n gt.eq 1) 1/(1-q^n).
```

Note that, rather than working with sequences, we are now in the regime of function, a switch between discrete to continuous. In order to simplifying (and doing fast) calculations for `p(n)`, Euler realized that a power series expansion for `product_(n=1)^(infinity) (1-q^n)` is essential. His empirical discovery leads to the following identity which is known as Euler's Pentagonal Number Theorem.

#img(path: "/images/Euler.jpeg", caption: "*Leonhard Euler* (1707–1783), who introduced generating functions and laid the foundational framework for the theory of integer partitions.", position: top, width: 60%, portrait: true)

```
limits(product)_(n gt.eq 1) (1-q^n) = limits(sum)_(n in ZZ) (-1)^n q^((3n^2-n)/2).
```

This identity was proved by Euler himself many years after the discovery. For a modern exposition of Euler's proof, we refer to Andrews' [1]. Putting (1.1) and (1.2) together, we see that

```
limits(sum)_(n gt.eq 0) p(n) q^n limits(sum)_(n in ZZ) (-1)^n q^((3n^2-n)/(2)) = 1,
```

and comparing the coefficients of `q^n` on both sides of the last identity, Euler found the following recurrence for `p(n)`: `p(0)=1`, and for all `n gt.eq 1`,

```
p(n)-p(n-1)-p(n-2)+p(n-5)+p(n-7)-dots = 0.
```

After Euler, the theory of partition propagates through the works of Sylvester, Cayley, Jacobi, MacMahon, Hardy, Ramanujan, Rademacher, Gordon, and Andrews among many others. The reader can consult Andrews' magnum opus [2]. In addition to that, the entire history of partitions up to 1918 is documented in [5], and for a survey article, we refer to [7].

The counting problem for `p(n)` (for large values of `n`) has been one of the most predominant themes in the literature on integer partitions. First of all, we point out a simple fact: `(p(n))_(n gt.eq 1)` is a strictly increasing sequence. For a partition `pi tack.r n-1`, define a map #box(`phi.alt:P(n-1)arrow\P(n)`) by `phi.alt(pi)=(pi,1)`; i.e., insertion of `1` as part in `pi` that yields a partitions of `n` and it is clear that `phi.alt` is an injective map and `P(n) without phi.alt(P(n-1))`  is the set of all partitions of `n` where `1` is not a part (also known as non-unitary partitions of `n`). Let us try to formulate the problem of counting `p(n)` in terms of counting partitions of `n` subject to the condition that each partition has at most `k` parts. Let `p_(lt.eq k)(n)` denotes total number of such partitions of `n`. Observe that for `k=n`, `p_(lt.eq k)(n) = p(n)`. Cayley [4] and Sylvester [18] gave a number of formulas for `p_(lt.eq k)(n)` with small values of `k`, which was anticipated by Herschel [10]. For example, `p_(lt.eq 2)(n)= floor.l (n+1)/2 floor.r`. Now the question we may ask how far we can compute `p(n)`. Is there any simple formula for counting `p(n)` apart from (1.3)? Using (1.3), MacMahon computed `p(200)` by hand and

```
p(200)=3972999029388.
```

This was a remarkable achievement and of great importance #footnote[We will discuss the importance in the final section.]. Now the question is

*Problem 1.1.* _How fast does `p(n)` grows?_

To understand the problem and in order to get an answer, we need some artillery from analysis and number theory, precisely, the notion of asymptotics and modular forms.

== Preliminaries

*Approximations and asymptotics:* According to Russell,

#quote([All exact science is dominated by the idea of approximation."])

Since antiquity, the notions of approximations have played a crucial role in major disciplines of science and philosophy. The formula for approximating the square root of a number is often attributed to the Babylonians. Since then, mathematical formulae were developed to assist in approximating transcendental functions. Probably the first application of theory of approximations was due to Euler who tried to solve a problem of drawing a map of the Russian empire with exact latitudes. After Euler #footnote[Among many others, the most celebrated one is perhaps Euler--Maclaurin summation formula.], Gau\u{00df}, Laplace, Fourier, Cauchy, Chebyshev, Lagrange, Poisson, Feje\u{0301}r, Weierstra\u{00df}, Runge among many others expanded the theory of approximations while working on several problems in different domains of mathematics and physics. Asymptotic analysis is a branch of mathematical analysis that provides a rigorous foundation to understand the language of approximation. Let us start with a well-known asymptotic result, so-called Stirling's formula: `limits(lim)_(n -> infinity) n!/(sqrt(2 pi n) n^n e^(-n)) = 1`. In the language of asymptotics, we say `n! tilde sqrt(2 pi n) n^n e^(-n)`, as `n -> infinity`. Now, the question naturally arises what is the significance of this limit formula when one can easily compute `n!` with a computer? The point is, as `n` became larger, we do not know how the function `n!` really behaves. Thanks to Stirling's approximation, we have now the information that `n!` has exponential growth, i.e., we perceive the "unknown" function `n!` in terms of well-known elementary functions. Let us conclude this section with another deep and famous asymptotic formula. Let `x in RR_(>0)` and `pi(x)` denotes the number of primes not exceeding `x`. Based on the tables by Felkel and Vega, Legendre conjectured in 1797-1798 that #box(`limits(lim)_(x -> infinity) pi(x)/((x/(A log x + B))) = 1`), and later in `1808`, he proposed that `A=1` and `B approx -1.08366`. The prime number theorem, originally conjectured by Gau\u{00df}, and independently proved by Hadamard [8] and de la Valle\u{0301}e Poussin [14], states that

```
pi(x) tilde x/log(x) "as" x -> infinity.
```

For an elementary proof of the prime number theorem, we refer the reader to Selberg's proof [16].

*Modular Forms:* We begin with elementary trigonometric functions. Euler discovered that `e^(i x)= cos x + i sin x`, where `i` is an imaginary number (termed by Descartes) satisfying `i^2=-1`. In 1807, Fourier introduced a series, what is well-known as "Fourier series", for the purpose of solving the heat equation in a metal plate. Roughly we can say that a Fourier series is an infinite sum that represents a periodic function as a sum of sine and cosine functions. Both sine and cosine function are periodic with period `2 pi`, i.e., #box(` sin(x+2 pi) = sin x`) and trivially, #box(`sin(x+2 pi k) = sin x`) for all `k in ZZ`. In group theoretic language, it is equivalent to say that `sin 2 pi x` is invariant under the abelian group `(ZZ,+)`. Therefore, the question arises which class of functions are invariant under the action of a non-abelian group? Before giving an example of such a class of functions, let us introduce a few preliminary definitions.

Define `HH := {tau in CC: "Im" tau gt 0}`. Let  `"GL"_2 (ZZ)` be the set of `2 times 2` matrices with integer entries and non-zero determinant. The special linear group #footnote[This discrete subgroup is also called the _full modular group_.] `"SL"_2 (ZZ)` be a subgroup of `"GL"_2 (ZZ)` with determinant one. The non-abelian group `"SL"_2 (ZZ)` acts on `HH` in the following way: for `gamma in "SL"_2 (ZZ)` and `tau in HH`,  `gamma tau := (a tau + b)/(c tau + d)`.  Let `k in 1/2 ZZ` and a holomorphic function `f: HH -> CC` is called a _modular form_ of weight `k` over `"SL"_2(ZZ)` if for ` gamma = mat(
	a, b;
	c, d;
) in "SL"_2 (ZZ)` and `tau in HH`, it satisfies #footnote[This condition is called _Modularity_.] `f(gamma tau) := (c tau + d)^k f(tau)` (up to an automorphy factor) along with `f` is bounded as `v -> infinity` (with `tau = u + i v`). Note that if `k=0`, then `f` is invariant under the non-abelian group `"SL"_2 (ZZ)`.

Note that for `gamma = T`, we have `f(tau + 1) = f(tau)`. From the theory of complex analysis, we know that such a periodic function admits a Fourier expansion and thus #box(`f(tau) = sum_(n gt.eq -m) a_f (n) q^n`), where `q = e^(2 pi i tau)` and `a_f (n)` are called Fourier coefficients. The partition function `p(n)` are Fourier coefficients of `q^(-1/24) eta(q)`, where `eta(tau)` is the Dedekind eta function #footnote[This is a modular form of weight `1/2`], defined by `eta(tau) := q^(1/24) limits(product)_(n gt.eq 1) (1 - q^n)`. For a more brief overview on modular forms, we refer to [3]. 

In the next section, we will see how these two topics, seemingly different, comes together to address Problem 1.1.

== Asymptotic Formula for `p(n)`

In 1918, using the modularity of `P`, Hardy and Ramanujan [9] developed the Circle Method and found an asymptotic series for `p(n)`. The simplest form of their result reads

```
p(n) tilde 1/(4 n sqrt(3)) e^(pi sqrt((2n)/3)) "as" n -> infinity.
```

A few years later, Uspensky [19] independently discovered this. In [9, equation (2.11)], Hardy and Ramanujan first proved that there exist `H, K gt 0` such that for `n in NN`, `H/n e^(2 sqrt(n)) lt p(n) lt K/n e^(2 sqrt(2n))`. Thus, the next step is to determine `C`, where `C = limits(lim)_(n -> infinity) (log p(n))/(sqrt(n))`, which is documented in [9, Section 3]. Next, applying the Cauchy integral formula, we have

```
p(n) = 1/(2 pi i) integral_(Gamma) (P(q))/(q^(n+1)) d q,
```

#img(path: "/images/Hardy.jpg", caption: "*G. H. Hardy* (1877–1947), whose analytic approach and development of the Circle Method led to the first asymptotic formula for the partition function `p(n)`.", position: top, width: 60%, portrait: true)

where the path `Gamma` encloses the origin and lies entirely inside the unit circle. Truncating (1.1), we observe that `P_N (q) := product_(n=1)^(N) 1/(1-q^n)` has a pole at `q=1` of order `N`, a pole at `q=-1` of order `floor.l N/2 floor.r`, poles at `q = e^((2 pi i)/3)` and `q = e^((4 pi i)/3)` of order `floor.l N/3 floor.r`, and so on. Hardy and Ramanujan defined the following auxiliary function `F(q) := 1/(pi sqrt(2)) sum_(n gt.eq 1) Psi(n)q^n`, where `Psi(n) := d/(d n) ((cosh C lambda_(n)-1)/(lambda_n))`, `C= pi sqrt(2/3)`, and `lambda_n = sqrt(n - 1/24)`. Now the behaviour of `P` and `F` is similar inside the unit circle and in the neighbourhood of `q=1`. Applying Cauchy's integral formula for `P-F`, they obtain the first term of the asymptotic series

```
p(n) = 1/(2 pi sqrt(2)) d/(d n) ((e^(C lambda_n))/(lambda_n)) + O (e^(D sqrt(n)))
```

where `D gt C/2`. Taking `n -> infinity`, (3.3) gives (3.1). But how close the formula (3.3) with real values of `p(n)`? For example, taking `n in {61,62,63}`, (3.3) gives `1121538.672, 1300121.359, 1505535.606`, whereas the exact values are `1121505, 1300156, 1505499`. So the errors alternate in sign. To explain this factor, the same principle is applied near the point `-1` on the unit circle which contributes to the second term in the series for `p(n)`; i.e.,

```
p(n) &= 1/(2 pi sqrt(2)) d/(d n) ((e^(C lambda_n))/(lambda_n)) + ((-1)^n)/(2 pi) (d)/(d n) ((e^((C lambda_n)/(2)))/(lambda_n)) + O (e^(D sqrt(n))),
```

where `D gt C/3`. This process can be continued further by taking into consideration the points on the unit circle where `P` has singularities. For example, the singularities which are important after `q=-1` are `q=e^((2 pi i)/3)` and `q=e^((4 pi i)/3)`, and so on. The major obstacle to proceeding systematically is to construct the auxiliary functions associated with the points `q=e^((2 pi i h)/k)` of singularity lying on the unit circle. To illustrate this, define #box(`F_(h,k)(q):=omega_(h,k) (sqrt(k))/(pi sqrt(2)) F_(C/k)(q_(h,k))`), where `omega_(h,k)` is a `24`th root of unity, #box(`q_(h,k)=q e^((-2 pi i h)/k)`), and for `alpha` being positive and independent of `n`, define

```
Phi(q) := P(q) - limits(sum)_(k=1)^(alpha sqrt(n)) limits(sum)_(1 lt.eq h lt.eq k\ (h,k)=1) F_(h,k) (q)
```

If then `F_(h,k)(q) = sum c_(h,k,n) q^n`, we obtain from Cauchy integral formula,

```
p(n) - limits(sum)_(k=1)^(alpha sqrt(n)) limits(sum)_(1 lt.eq h lt.eq k-1,\ (h,k)=1) c_(h,k,n) = 1/(2 pi i) integral_(Gamma) d q (Phi(q))\/(q^(n+1)) ,
```

where `Gamma` is a circle of radius `R<1` and its center is the origin. By dissecting the circle `Gamma` by means of Farey series and computing the bounds of the integral on the right-hand side of (3.5), Hardy and Ramanujan finally proved that the error term is of order `O(1/n^4)`. The final form of their formula for `p(n)` can be stated as follows.

*Theorem 3.1.* #emph[There exists an `alpha in RR_(gt 0)` such that `n gt.double 1`,]

```
p(n) &= 1/(2 pi sqrt(2)) limits(sum)_(k=1)^(alpha sqrt(N)) sqrt(k) A_k (n) d/(d n) ((e^((C lambda_n)/(k)))/(lambda_n)) + O(n^(-1/4)),
```

where 

```
A_k (n) := limits(sum)_(1 lt.eq h lt k\ (h,k)=1) e^(-(2 pi i n h)/k + pi i s(h,k)) space "and" \ s(h,k) := limits(sum)_(mu=1)^(k-1) ((mu)/k - floor.l (mu)/k floor.r - 1/2) ((h mu)/k - floor.l (h mu)/k floor.r - 1/2).
```

#img(path: "/images/Rademacher.jpeg", caption: "*Hans Rademacher* (1892–1969), who perfected the Hardy–Ramanujan circle method and obtained a convergent exact series for the partition function `p(n)`.", position: bottom, width: 60%, portrait: true)

To know in detail about this collaboration, we refer the reader to [13, 17]. We end this discussion by quoting further two instances for verifying (3.6) with the actual values of `p(n)`. MacMahon #footnote[See the table [9, page 377-378]] computed values of `p(n)` for `1 lt.eq n lt.eq 200`. The actual values for 

```
p(100)=190569292 space "and" space p(200)=3972999029388,
```

whereas if taking the first six terms of (3.6) for `n=100` and first eight terms of (3.6) for `n=200` gives

```
p(100) approx 190569291.996 "and" p(200) approx 3972999029388.004.
```

This proves the accuracy of the formula (3.6). In [9, Section 6, 6.22], they remarked that it remains unanswered whether the infinite series (by extending `n -> infinity` in (3.6)) is convergent or divergent and if it is convergent, then whether it represents `p(n)`. Lehmer [11] proved that (3.6) is divergent when `N -> infinity`. In the fall of 1936, Rademacher #footnote[Selberg [17, page 705] came up with the same formula Equation (3.7) for `p(n)` around the same time but never published his result when he came to know that Rademacher already had it.] [15] perfected the Hardy--Ramanujan circle method and derived a convergent infinite series for `p(n)` stated below

```
p(n)= 1/(pi sqrt(2)) limits(sum)_(k gt.eq 1) sqrt(k) A_k (n) [d/(d x) ((sinh ((pi)/k (2/3 (x - 1/24))^(1/2)))/((x - 1/24)^(1/2)))]_(x=n).
```

#img(path: "/images/Ramanujan.jpeg", caption: "*Srinivasa Ramanujan* (1887–1920), whose deep insights into partitions and modular forms were central to the asymptotic theory of the partition function `p(n)`.", position: top, width: 60%, portrait: true)

He [15] also proved that if the series (3.7) is truncated after `N` terms, the absolute value of the error is bounded by 

```
(2 pi^2)/(9 sqrt(3N)) e^((pi)/(N+1) sqrt((2 n)/3)),
```

which tends to `0` as `N -> infinity`. If we truncate the series (3.7) at `N` and compare it with (3.6), it clearly shows two significant differences between them:

+ In (3.6), the parameters `n` and `N` are entangled whereas in (3.7), we have the complete freedom over `n` and `N`.
+ The exponential function in (3.6) is replaced by hyperbolic trigonometric function (precisely `sinh`) in (3.7) which made the series convergent.

So, summarizing the topics covered above, we see that how through a simple counting function `p(n)`, three different domains (in fact many more which is beyond the scope to present in this short exposition) in mathematics come together so that (3.7) comes into existence, like a piece of music where different notes and tones sequentially placed make a harmony to give a birth of ragas or symphonies.

== Acknowledgements

The author has received funding from the European Research Council (ERC) under the European Union’s Horizon 2020 research and innovation programme (grant agreement No. 101001179). The author thanks Soumya Bhattacharya and IISER Kolkata for its warm hospitality during the conference entitled "Primes, Patterns & Propagation" during 08--12 December, 2025.
