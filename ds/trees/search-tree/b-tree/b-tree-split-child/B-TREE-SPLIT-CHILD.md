# B-TREE-SPLIT-CHILD
B-TREE-SPLIT-CHILD(x,i)
1 z = ALLOCATE-NODE()
2 y = x.ci 
3 z.leaf = y.leaf 
4 z.n = t -1 
5 for j = 1 to t - 1
6   z.key_j = y.key_{j+t}
7 if not y.leaf 
8   for j =1 to t 
9     z.c_j = y.c_{j+t}
10 y_n = t - 1
11 for j = x.n + 1 downto i + 1 
12   x.c_{j+1} + x.c_j
13 x
14 for j D x:n downto i 
15   x.key_{j+1} = x.key_{j}
16 x.key_i = y.key_t
17 x.n = x.n +1 
18 DISK-WRITE(y) 
19 DISK-WRITE(z)
20 DISK-WRITE(x)

![](B-TREE-SPLIT-CHILD/image.png)

#software-engineering/data-structures/trees/search-tree/b-TREE/B-TREE-SPLIT-CHILD
