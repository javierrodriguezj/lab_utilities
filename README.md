# Lab Utilities

Since I enter in my degree I have been in contact with a bunch of labs subjects and assignments enrolling indirects measures and data processing. This repository answers the need of automating calulus for the uncertainty in measures.

We remember that if we want to know the uncertinty($\varepsilon$) made for some magnitude $y= f(x_i,...,x_n)$ which involves others $x_i \quad i \in{1,...,n}$ variables with their uncertainty $\varepsilon(x_i)$, then 

$$
\varepsilon(y)=\sqrt{\sum_{i=1}^n\left(\frac{\partial f}{\partial x_i}\varepsilon(x_i)\right)^2}
$$

which may be a very common mistakes source in lab reports.


## Why is it useful?
It allows you to know for each list of data (with known uncertainty) the uncertainty of a new magnitude led by a function f. Moreover, you can find a simple but useful function to build graphs with uncertainties for each measures.
