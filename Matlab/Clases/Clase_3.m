clc, clear all, close all;
 syms s;
 
 julito = 1/(1+s);
 
 uili= ilaplace(julito);
 
 %%
 clc, clear all, close all;
 
 syms s t;
 R=10e6;
 C=0.01e-6;
 
 Chisgete= 12/((R*C*s+1)*s);
 Victor= ilaplace(Chisgete)
 
 Wels=laplace(Victor);
 
 pretty(Victor) % sirve para hacerlo bionito ;:v
 pretty(Wels)
 pretty(4550) menos uili :v