# Selected Exercises — STAT2601 / SDST2601

Source: Chapter 5 Exercises & Chapter 6 Exercises (HKU STAT2601).
Only the ten questions listed below are included.

---

## Q1 · Chapter 5 Exercises Q2

A random variable $Y$ is said to follow the **double exponential distribution** if it has the density function

$$
f(y) = \frac{1}{2}\lambda e^{-\lambda |y|}, \qquad -\infty < y < \infty,
$$

where $\lambda > 0$.

**(a)** Find the distribution function of $Y$.

**(b)** Find the moment generating function of $Y$.

**(c)** Find $E(Y)$ and $\mathrm{Var}(Y)$.

*(Ans: $E(Y)=0$, $\mathrm{Var}(Y)=2/\lambda^{2}$; MGF $\lambda^{2}/(\lambda^{2}-t^{2})$ for $-\lambda<t<\lambda$)*

---

## Q2 · Chapter 5 Exercises Q5

The time (in hours) required to repair a machine is an exponentially distributed random variable with parameter $\lambda = 2$.

**(a)** What is the probability that a repair time exceeds $1$ hour?

**(b)** What is the conditional probability that a repair takes at least $10$ hours, given that its duration exceeds $9$ hours?

*(Ans: (a) $0.1353$ (b) $0.1353$)*

---

## Q3 · Chapter 5 Exercises Q7

**(a)** A fire station is to be located along a road of length $A$, $A < \infty$. If fires occur at points uniformly chosen on $(0,A)$, where should the station be located so as to minimize the expected distance from the fire? That is, choose $a$ so as to minimize $E(|X-a|)$ when $X$ is uniformly distributed over $(0,A)$.

**(b)** Now suppose that the road is of infinite length — stretching from point $0$ outward to $\infty$. If the distance of a fire from point $0$ is exponentially distributed with rate $\lambda$, where should the fire station now be located? That is, we want to minimize $E(|X-a|)$ where $X$ is now exponential with rate $\lambda$.

*(Ans: (a) $A/2$ (b) $(\ln 2)/\lambda$)*

---

## Q4 · Chapter 5 Exercises Q15

If $X$ is a normal random variable with parameters $\mu = 10$ and $\sigma^{2} = 36$, compute

**(a)** $\Pr(X > 5)$

**(b)** $\Pr(4 < X < 16)$

**(c)** $\Pr(X < 8)$

**(d)** $\Pr(X < 20)$

**(e)** $\Pr(X > 16)$

*(Ans: (a) $0.7967$ (b) $0.6826$ (c) $0.3707$ (d) $0.9525$ (e) $0.1587$)*

---

## Q5 · Chapter 5 Exercises Q31

[HKALE 2002 ASL – Math and Stat Q13]

The weight of each bag of self-raising flour in a batch produced by a factory follows a normal distribution with mean $400\,\mathrm{g}$ and standard deviation $10\,\mathrm{g}$. A bag of flour with weight less than $376\,\mathrm{g}$ is underweight, and more than $424\,\mathrm{g}$ is overweight.

**(a)** Find the probability that a randomly selected bag of flour

- (i) is underweight;
- (ii) is overweight.

**(b)** If a bag of flour is either underweight or overweight, it will be classified as a **sub-standard** bag by the director of the factory. The director randomly selects $50$ bags as a sample from the batch.

- (i) Find the probability that there is no substandard bag of flour in the sample.
- (ii) Find the probability that there are no more than $2$ substandard bags of flour in the sample.

**(c)** A wholesaler is only concerned about the number of bags of flour which are underweight. The wholesaler re-analyses the sample of $50$ bags of flour in (b).

- (i) Find the probability that in the sample there is only $1$ substandard bag and it is not underweight.
- (ii) Find the probability that there are no more than $2$ substandard bags in the sample and no underweight bag of flour in the sample.
- (iii) Given that in the sample there are no more than $2$ substandard bags, find the probability that there is no underweight bag in the sample.

*(Ans: (a)(i) $0.0082$ (ii) $0.0082$; (b)(i) $0.4374$ (ii) $0.9511$; (c)(i) $0.1823$ (ii) $0.6570$ (iii) $0.6908$)*

---

## Q6 · Chapter 6 Exercises Q1

Suppose the life distribution of an item has hazard rate function

$$
\lambda(t) = \frac{1}{t^{2}}, \qquad t > 0.
$$

**(a)** What is the probability that the item survives to age $2$?

**(b)** What is the probability that the item’s lifetime is between $0.4$ and $1.4$?

**(c)** What is the probability that a $1$-year-old item will survive to age $2$?

*(Ans: (a) $0.6065$ (b) $0.3364$ (c) $0.3114$)*

---

## Q7 · Chapter 6 Exercises Q6

The probability density function of $X$, the lifetime of a certain type of electronic device (measured in hours), is given by

$$
f(x) =
\begin{cases}
\dfrac{5}{x^{2}}, & x > 5, \\
0, & x \le 5.
\end{cases}
$$

**(a)** Find the cumulative distribution function of $X$.

**(b)** Find $\Pr(X \ge 12)$.

**(c)** Find $E(X)$ and $\mathrm{Var}(X)$.

**(d)** Find $E(\sqrt{X})$.

**(e)** Determine the lower quartile, median, and upper quartile of $X$.

**(f)** What is the probability that of $8$ such types of devices at least $3$ will function for at least $12$ hours? What assumptions are you making?

*(Ans: (b) $5/12$; (c) $\infty,\infty$; (d) $4.472$; (e) $20/3$, $10$, $20$; (f) $0.7185$)*

---

## Q8 · Chapter 6 Exercises Q7

Suppose $X$ is a continuous random variable with $E(X)=5$ and $\mathrm{Var}(X)=2$.

**(a)** Calculate $E[(3+X)^{2}]$.

**(b)** Calculate $\mathrm{Var}(3-4X)$.

**(c)** Find a lower bound for $\Pr(-1 \le X \le 11)$.

*(Ans: (a) $66$ (b) $32$ (c) $17/18$)*

---

## Q9 · Chapter 6 Exercises Q10

Let $X$ be uniformly distributed over $(1,4)$.

**(a)** Use Markov’s inequality to estimate a bound for $\Pr(X \ge a)$ where $1 \le a \le 4$, and compare your estimate with the exact answer.

**(b)** Find the value of $a \in (1,4)$ that minimizes the difference between the bound and the exact probability computed in part (a).

*(Ans: (a) bound $5/(2a)$, exact $(4-a)/3$; (b) $\sqrt{15/2}$ — see solutions for consistent form with course key)*

---

## Q10 · Chapter 6 Exercises Q18

Let $X$ be a random variable with pdf given by

$$
f(x) = \frac{c}{(2+x)^{3}}, \qquad 0 < x < \infty.
$$

**(a)** Find the value of $c$.

**(b)** Find the hazard rate function of $X$.

**(c)** Let $Y = -\ln X$. Find the pdf of $Y$.

*(Ans: (a) $8$; (b) $\lambda(x)=2/(x+2)$ for $x>0$; (c) $f_Y(y)=8e^{-4y}/(2+e^{-y})^{3}$ for $-\infty<y<\infty$ — form may vary with substitution)*
