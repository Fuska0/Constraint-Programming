
int: n =5;
array[1..n] of var 1..n: ys;

constraint forall (i,j in 1..n where i<j) (ys[i] != ys[j]);
constraint forall (i,j in 1..n where i<j) (i + ys[i] != j + ys[j]);
constraint forall (i,j in 1..n where i<j) (i - ys[i] != j - ys[j]);

solve satisfy;
output [ if fix(ys[j]) == i then "|Q" else "|_" endif ++
  if j == n then "\n" else "" endif | i,j in 1..n];
