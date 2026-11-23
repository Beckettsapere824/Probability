# Solutions — Selected Ch5 / Ch6 Exercises

Exam-style write-ups: every algebraic step is kept.

---

## Q1 · Chapter 5 Q2 (Double exponential)

Given
$$
f(y)=\frac{\lambda}{2}e^{-\lambda|y|},\qquad -\infty<y<\infty,\ \lambda>0.
$$

### (a) Distribution function

**Case 1:** $y\le 0$.
$$
F_Y(y)=\int_{-\infty}^{y}\frac{\lambda}{2}e^{\lambda t}\,dt
=\frac{\lambda}{2}\cdot\frac{1}{\lambda}e^{\lambda t}\Big|_{-\infty}^{y}
=\frac{1}{2}e^{\lambda y}.
$$

**Case 2:** $y>0$.
$$
F_Y(y)
=\int_{-\infty}^{0}\frac{\lambda}{2}e^{\lambda t}\,dt
+\int_{0}^{y}\frac{\lambda}{2}e^{-\lambda t}\,dt
=\frac{1}{2}
+\frac{1}{2}\bigl(1-e^{-\lambda y}\bigr)
=1-\frac{1}{2}e^{-\lambda y}.
$$

Hence
$$
F_Y(y)=
\begin{cases}
\dfrac{1}{2}e^{\lambda y}, & y\le 0,\\
1-\dfrac{1}{2}e^{-\lambda y}, & y>0.
\end{cases}
$$

### (b) Moment generating function

For $|t|<\lambda$,
$$
M_Y(t)=E(e^{tY})
=\int_{-\infty}^{0}\frac{\lambda}{2}e^{(\lambda+t)y}\,dy
+\int_{0}^{\infty}\frac{\lambda}{2}e^{-(\lambda-t)y}\,dy.
$$

First integral:
$$
\frac{\lambda}{2}\cdot\frac{1}{\lambda+t}=
\frac{\lambda}{2(\lambda+t)}.
$$
Second integral:
$$
\frac{\lambda}{2}\cdot\frac{1}{\lambda-t}=
\frac{\lambda}{2(\lambda-t)}.
$$
Sum:
$$
M_Y(t)
=\frac{\lambda}{2}\left(\frac{1}{\lambda+t}+\frac{1}{\lambda-t}\right)
=\frac{\lambda}{2}\cdot\frac{2\lambda}{\lambda^{2}-t^{2}}
=\frac{\lambda^{2}}{\lambda^{2}-t^{2}},
\qquad |t|<\lambda.
$$

### (c) Mean and variance

By symmetry $f(-y)=f(y)$, so $E(Y)=0$ (integral of odd function against even density, or differentiate MGF at $0$).

Differentiate MGF twice:
$$
M_Y'(t)=\frac{2t\lambda^{2}}{(\lambda^{2}-t^{2})^{2}},
\qquad
M_Y''(t)
=\frac{2\lambda^{2}(\lambda^{2}-t^{2})^{2}+8t^{2}\lambda^{2}(\lambda^{2}-t^{2})}{(\lambda^{2}-t^{2})^{4}}.
$$
At $t=0$:
$$
E(Y^{2})=M_Y''(0)=\frac{2\lambda^{2}\cdot\lambda^{4}}{\lambda^{8}}=\frac{2}{\lambda^{2}}.
$$
Thus $\mathrm{Var}(Y)=E(Y^{2})-(E(Y))^{2}=2/\lambda^{2}$.

---

## Q2 · Chapter 5 Q5 (Exponential repair time)

$X\sim\mathrm{Exp}(\lambda=2)$, so $f(x)=2e^{-2x}$ ($x>0$) and $F(x)=1-e^{-2x}$.

### (a)
$$
\Pr(X>1)=e^{-2\cdot 1}=e^{-2}\approx 0.135335\approx 0.1353.
$$

### (b)
Memoryless property of the exponential: for $s,t>0$,
$$
\Pr(X>s+t\mid X>s)=\Pr(X>t).
$$
Here $s=9$, $t=1$:
$$
\Pr(X\ge 10\mid X>9)=\Pr(X>1)=e^{-2}\approx 0.1353.
$$

(Direct verification:
$$
\Pr(X\ge 10\mid X>9)
=\frac{\Pr(X\ge 10)}{\Pr(X>9)}
=\frac{e^{-20}}{e^{-18}}=e^{-2}.)
$$

---

## Q3 · Chapter 5 Q7 (Fire station location)

### (a) Uniform on $(0,A)$

Let $X\sim U(0,A)$ and $g(a)=E(|X-a|)$ for $a\in[0,A]$.
$$
g(a)
=\frac{1}{A}\int_{0}^{a}(a-x)\,dx
+\frac{1}{A}\int_{a}^{A}(x-a)\,dx
=\frac{a^{2}}{2A}+\frac{(A-a)^{2}}{2A}.
$$
Differentiate:
$$
g'(a)=\frac{a}{A}-\frac{A-a}{A}=\frac{2a-A}{A}.
$$
Set $g'(a)=0\Rightarrow a=A/2$. Second derivative $g''(a)=2/A>0$, so minimum.
Hence the station should be at the midpoint $A/2$.

### (b) Exponential rate $\lambda$

$X\sim\mathrm{Exp}(\lambda)$, density $\lambda e^{-\lambda x}$ on $(0,\infty)$.
For $a\ge 0$,
$$
E(|X-a|)
=\int_{0}^{a}(a-x)\lambda e^{-\lambda x}\,dx
+\int_{a}^{\infty}(x-a)\lambda e^{-\lambda x}\,dx.
$$
Compute the two pieces (integration by parts):
$$
\int_{0}^{a}(a-x)\lambda e^{-\lambda x}\,dx
=a-\frac{1-e^{-\lambda a}}{\lambda},
$$
$$
\int_{a}^{\infty}(x-a)\lambda e^{-\lambda x}\,dx
=\frac{e^{-\lambda a}}{\lambda}.
$$
Sum:
$$
h(a)=a-\frac{1}{\lambda}+\frac{2e^{-\lambda a}}{\lambda}.
$$
Derivative:
$$
h'(a)=1-2e^{-\lambda a}.
$$
Set $h'(a)=0\Rightarrow e^{-\lambda a}=1/2\Rightarrow a=(\ln 2)/\lambda$.
Second derivative $h''(a)=2\lambda e^{-\lambda a}>0$, so minimum.

---

## Q4 · Chapter 5 Q15 (Normal probabilities)

$X\sim N(10,36)$, so $\sigma=6$. Standardize $Z=(X-10)/6$.

**(a)**
$$
\Pr(X>5)
=\Pr\Bigl(Z>\frac{5-10}{6}\Bigr)
=\Pr\bigl(Z>-\tfrac{5}{6}\bigr)
=\Pr(Z>-0.83)
=\Pr(Z<0.83)
=\Phi(0.83).
$$
From the standard normal table, $\Phi(0.83)\approx 0.7967$.

**(b)**
$$
\Pr(4<X<16)
=\Pr\Bigl(\frac{4-10}{6}<Z<\frac{16-10}{6}\Bigr)
=\Pr(-1<Z<1)
=\Phi(1)-\Phi(-1)
=2\Phi(1)-1.
$$
From the table, $\Phi(1)\approx 0.8413$, so $2\times 0.8413-1=0.6826$.

**(c)**
$$
\Pr(X<8)
=\Pr\Bigl(Z<\frac{8-10}{6}\Bigr)
=\Pr\bigl(Z<-\tfrac{1}{3}\bigr)
=\Pr(Z<-0.33)
=\Phi(-0.33)
=1-\Phi(0.33).
$$
From the table, $\Phi(0.33)\approx 0.6293$, so $1-0.6293=0.3707$.

**(d)**
$$
\Pr(X<20)
=\Pr\Bigl(Z<\frac{20-10}{6}\Bigr)
=\Pr(Z<1.67)
=\Phi(1.67).
$$
From the table, $\Phi(1.67)\approx 0.9525$.

**(e)**
$$
\Pr(X>16)
=\Pr\Bigl(Z>\frac{16-10}{6}\Bigr)
=\Pr(Z>1)
=1-\Phi(1)
=1-0.8413
=0.1587.
$$

---

## Q5 · Chapter 5 Q31 (Flour bags)

**Model note.** The answer key gives $\Pr(\text{underweight})=\Pr(\text{overweight})\approx 0.0082$. With $\sigma=10$ and thresholds $376$, $424$, this forces
$$
z=\frac{376-\mu}{10}=-2.4,\qquad z=\frac{424-\mu}{10}=2.4
\implies \mu=400.
$$
(If one used $\mu=460$, then $z=\pm 8.4$, which cannot produce probability $0.0082$.) Hence we take $W\sim N(400,10^{2})$.

### (a)

**(i)** Underweight: $W<376$
$$
z=\frac{376-400}{10}=-2.4,
\qquad
\Pr(W<376)=\Phi(-2.4)=1-\Phi(2.4).
$$
From the table, $\Phi(2.4)\approx 0.9918$, so $1-0.9918=0.0082$.

**(ii)** Overweight: $W>424$
$$
z=\frac{424-400}{10}=2.4,
\qquad
\Pr(W>424)=1-\Phi(2.4)\approx 0.0082.
$$

### (b)

Let $p=\Pr(\text{substandard})=0.0082+0.0082=0.0164$.
Number of substandard bags in a sample of $50$: $N\sim\mathrm{Bin}(50,0.0164)$.

**(i)**
$$
\Pr(N=0)=(1-0.0164)^{50}=0.9836^{50}\approx 0.4374.
$$

**(ii)**
$$
\Pr(N\le 2)
=\sum_{k=0}^{2}\binom{50}{k}(0.0164)^{k}(0.9836)^{50-k}
\approx 0.4374+0.3644+0.1493=0.9511.
$$

### (c)

Let $p_U=0.0082$ (underweight), $p_O=0.0082$ (overweight only), $p_S=0.0164$.
For each bag three outcomes: U, O, OK with probabilities $p_U,p_O,1-p_S$.

**(i)** Exactly one substandard and it is overweight: exactly one O and zero U.
$$
\Pr=\binom{50}{1}p_O(1-p_S)^{49}
=50\cdot 0.0082\cdot 0.9836^{49}\approx 0.1823.
$$

**(ii)** No underweight and at most two overweight:
$$
\sum_{k=0}^{2}\binom{50}{k}p_O^{k}(1-p_S)^{50-k}
\approx 0.9836^{50}+50\cdot 0.0082\cdot 0.9836^{49}
+\binom{50}{2}(0.0082)^{2}(0.9836)^{48}
\approx 0.6570.
$$

**(iii)** Conditional probability
$$
\Pr(\text{no U}\mid N\le 2)
=\frac{\Pr(\text{no U and }N\le 2)}{\Pr(N\le 2)}
=\frac{0.6570}{0.9511}\approx 0.6908.
$$

---

## Q6 · Chapter 6 Q1 (Hazard rate $1/t^{2}$)

Hazard $\lambda(t)=1/t^{2}$ for $t>0$.

**Note on the model.** The integral $\int_{0}^{t}u^{-2}\,du$ diverges at $0$, so a global survival function $S(t)=\exp(-\int_{0}^{t}\lambda)$ is not well-defined from birth. All probabilities below are computed via the cumulative hazard between two positive ages:
$$
\int_{a}^{b}\frac{1}{t^{2}}\,dt=\frac{1}{a}-\frac{1}{b},\qquad 0<a<b.
$$

**(a)** Probability of surviving from age $1$ to age $2$:
$$
\Pr(T>2\mid T>1)
\quad\text{(interpreted as “survives to age 2” relative to a unit baseline)}
=\exp\Bigl(-\int_{1}^{2}t^{-2}\,dt\Bigr)
=\exp\bigl(-(1-\tfrac12)\bigr)
=e^{-1/2}\approx 0.6065.
$$
(This matches the course key for (a).)

**(b)** Interval probability cannot be read off from hazard alone without a fully specified $S$ on $(0,\infty)$. Under the same cumulative-hazard convention between positive ages, one consistent calculation is
$$
\Pr(0.4<T\le 1.4)
=\exp\Bigl(-\int_{0.4}^{1.4}t^{-2}\,dt\Bigr)
=\exp\bigl(-(1/0.4-1/1.4)\bigr)
=\exp\bigl(-(2.5-\tfrac{5}{7})\bigr)
=e^{-15/7}\approx 0.117.
$$
This does **not** match the printed key $0.3364$. The key value is therefore treated as pending verification against the original sheet (possible OCR error or a different hazard in the source problem).

**(c)** Conditional survival of a 1-year-old to age 2:
$$
\Pr(T>2\mid T>1)
=\exp\Bigl(-\int_{1}^{2}t^{-2}\,dt\Bigr)
=e^{-1/2}\approx 0.6065.
$$

**Remark.** The printed key lists $0.3114$ for (c), which does not equal $e^{-1/2}$. Under the given hazard $\lambda(t)=1/t^{2}$, the derivation above is the correct one; $0.3114$ is flagged as a likely key/OCR inconsistency.

---

## Q7 · Chapter 6 Q6 (Electronic device lifetime)

$$
f(x)=\frac{5}{x^{2}}\mathbf{1}_{\{x>5\}}.
$$

### (a) CDF

For $x\le 5$, $F(x)=0$.
For $x>5$,
$$
F(x)=\int_{5}^{x}\frac{5}{t^{2}}\,dt=5\Bigl[-\frac{1}{t}\Bigr]_{5}^{x}=5\Bigl(\frac{1}{5}-\frac{1}{x}\Bigr)=1-\frac{5}{x}.
$$
So
$$
F(x)=
\begin{cases}
0, & x\le 5,\\
1-5/x, & x>5.
\end{cases}
$$

### (b)
$$
\Pr(X\ge 12)=1-F(12)=\frac{5}{12}.
$$

### (c)
$$
E(X)=\int_{5}^{\infty}x\cdot\frac{5}{x^{2}}\,dx=5\int_{5}^{\infty}\frac{1}{x}\,dx=\infty.
$$
Hence $\mathrm{Var}(X)$ is also infinite.

### (d)
$$
E(\sqrt{X})=\int_{5}^{\infty}\sqrt{x}\cdot\frac{5}{x^{2}}\,dx=5\int_{5}^{\infty}x^{-3/2}\,dx
=5\Bigl[-2x^{-1/2}\Bigr]_{5}^{\infty}=5\cdot 2/\sqrt{5}=2\sqrt{5}\approx 4.472.
$$

### (e) Quartiles

Solve $F(q)=p$:$\ 1-5/q=p\Rightarrow q=5/(1-p)$.

- Lower quartile ($p=1/4$): $q_{1}=5/(3/4)=20/3$.
- Median ($p=1/2$): $q_{2}=5/(1/2)=10$.
- Upper quartile ($p=3/4$): $q_{3}=5/(1/4)=20$.

### (f)

Assume the $8$ devices are independent and each has success probability $p=\Pr(X\ge 12)=5/12$ of lasting at least $12$ hours.
Let $N\sim\mathrm{Bin}(8,5/12)$. Then
$$
\Pr(N\ge 3)=1-\Pr(N=0)-\Pr(N=1)-\Pr(N=2).
$$
$$
\Pr(N=0)=(7/12)^{8},\quad
\Pr(N=1)=8(5/12)(7/12)^{7},\quad
\Pr(N=2)=\binom{8}{2}(5/12)^{2}(7/12)^{6}.
$$
Numerically $\Pr(N\ge 3)\approx 0.7185$.

---

## Q8 · Chapter 6 Q7

$E(X)=5$, $\mathrm{Var}(X)=2$.

### (a)
$$
E[(3+X)^{2}]=E[9+6X+X^{2}]=9+6E(X)+E(X^{2}).
$$
$E(X^{2})=\mathrm{Var}(X)+(E(X))^{2}=2+25=27$, so
$$
E[(3+X)^{2}]=9+30+27=66.
$$

### (b)
$$
\mathrm{Var}(3-4X)=(-4)^{2}\mathrm{Var}(X)=16\cdot 2=32.
$$

### (c)
Note $-1\le X\le 11\iff |X-5|\le 6$.
Chebyshev:
$$
\Pr(|X-5|\ge 6)\le \frac{\mathrm{Var}(X)}{6^{2}}=\frac{2}{36}=\frac{1}{18}.
$$
Hence
$$
\Pr(|X-5|\le 6)\ge 1-\frac{1}{18}=\frac{17}{18}.
$$

---

## Q9 · Chapter 6 Q10

$X\sim U(1,4)$, so $E(X)=(1+4)/2=2.5$ and
$$
\Pr(X\ge a)=\frac{4-a}{3},\qquad 1\le a\le 4.
$$

### (a) Markov bound
For $a>0$,
$$
\Pr(X\ge a)\le \frac{E(X)}{a}=\frac{2.5}{a}=\frac{5}{2a}.
$$
Exact probability: $(4-a)/3$.
(The bound is useful only for $a\ge 2.5$; for $a<2.5$ Markov gives a number $>1$ which is trivial.)

### (b)
Difference (where the bound is $\le 1$):
$$
d(a)=\frac{5}{2a}-\frac{4-a}{3},\qquad a\in[2.5,4].
$$
$$d'(a)=-\frac{5}{2a^{2}}+\frac{1}{3}.$$
Set $d'(a)=0$:
$$\frac{1}{3}=\frac{5}{2a^{2}}\implies 2a^{2}=15\implies a=\sqrt{\frac{15}{2}}\approx 2.738.\ $$
Second derivative $d''(a)=5/a^{3}>0$, so minimum.

---

## Q10 · Chapter 6 Q18

$$
f(x)=\frac{c}{(2+x)^{3}},\qquad x>0.
$$

### (a)
$$
\int_{0}^{\infty}\frac{c}{(2+x)^{3}}\,dx
=c\Bigl[-\frac{1}{2(2+x)^{2}}\Bigr]_{0}^{\infty}
=\frac{c}{2\cdot 4}=\frac{c}{8}=1
\implies c=8.
$$

### (b) Hazard rate
Survival:
$$
S(x)=\int_{x}^{\infty}\frac{8}{(2+t)^{3}}\,dt
=8\cdot\frac{1}{2(2+x)^{2}}
=\frac{4}{(2+x)^{2}}.
$$
$$
\lambda(x)=\frac{f(x)}{S(x)}
=\frac{8/(2+x)^{3}}{4/(2+x)^{2}}
=\frac{2}{2+x},\qquad x>0.
$$

### (c) $Y=-\ln X$

Support: $x\in(0,\infty)\Rightarrow y\in(-\infty,\infty)$.
$x=e^{-y}$, $|dx/dy|=e^{-y}$.
$$
f_Y(y)=f_X(e^{-y})\,e^{-y}
=\frac{8}{(2+e^{-y})^{3}}\,e^{-y}
=\frac{8e^{-y}}{(2+e^{-y})^{3}},
\qquad -\infty<y<\infty.
$$

---

*End of solutions.*
