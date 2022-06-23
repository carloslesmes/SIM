# Linear congruential generator

import numpy as np

def lcg(n,a,c,m):
    x = np.array([0 for i in range(1,n+1)])
    x[1]=1
    for i in range(1,n+1):
        x[i+1] = (a * x[i] + c) % m 
    u = x / m
    return(u)  

a = 5**7
c = 0
m = 2**31-1
n = 10**4

u = lcg(n, a, c, m)
print(u)