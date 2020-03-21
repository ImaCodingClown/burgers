# Burger's Equation Assignmemt
## Order of Convergence Before the Shock

We want to compare the numerical solution to check the order of convergence for the numerical solutions of Burger's Equation without any slope limiters and with the minmod slope limiter. I have used the following equation to determine the order of convergence.

![F1]

As we can see from the following figures,

![convergenceslope](/orderofconvergencelimiter.png)

![convergencenolim](/orderofconvergencenolimiter.png)

![a](/3plotwithlimiter.png)
![b](/3plotwithlimiternolimiter.png)

it seems that the value of a is same for both cases, exhibiting the same order of convergence. It seems that limiting the slope while the function is still smooth, does not affect the order of convergene greatly.

## Order of Convergence After the Shock

![convgergenceaftershock](/orderofconvergencelatertime.png)

![c](/3plotlatertime.png)

Looking at the order of convergence after the shock has formed we see that around the extrema, the order of convergence is certainly not of the same order as everywhere else. This is due to the limitations of minmod slope limiter at extrema. 

[F1]:http://chart.apis.google.com/chart?cht=tx&chl=f_{\Delta{x}}-f_{\frac{\Delta{x}}{2}}=a(f_{\frac{\Delta{x}}{2}}-f_{\frac{\Delta{x}}{4}})
