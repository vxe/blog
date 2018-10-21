# APPROX-SUBSET-SUM
APPROX-SUBSET-SUM(S,t,e)
1 n = |S|
2 L_o = <0>
3 for i =1 to n 
4    L_i = MERGE-LISTS(L_{i-1}, L_{i-1} + x_{i} 
5    L_i = TRIM(L_i, e/2n)
6 remove from L_i every element that is greater than t 
7 let z* be the largest value in L_n
8 return z*

#software-engineering/data-structures/sets/subsets/APPROX-SUBSET-SUM
