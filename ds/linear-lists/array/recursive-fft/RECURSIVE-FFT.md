# RECURSIVE-FFT
RECURSIVE-FFT(a)
1 n = a.length  n is a power of 2 
2 if n == 1 
3    return a 
4 ωₙ = e^2πi/n
5 ω = 1 
6 a^[0] = (a₀, a₂,...,aₙ₋₂)
7 a^[1] = (a₁, a₃,...,aₙ)
8 y^[0] = RECURSIVE-FFT(a^[0])
9 y^[1] = RECURSIVE-FFT(a^[1]) 
10 for k = 0 to n/2 -  1 
11    yₖ = yₖ^[0] + ω yₖ^[1]
12    yₖ₊₍ₙ_/₂₎ = yₖ^[0] - ωyₖ^[1]
13    ω == ωωn 
14 return y  y is assume= to be a column vector


#software-engineering/data-structures/linear-lists/array/RECURSIVE-FFT
