include "alldifferent.mzn";

int: n =5;
array[1..n] of var 1..n: ys;

constraint alldifferent(ys);
constraint alldifferent([i + ys[i] | i in 1..n]);
constraint alldifferent([i - ys[i] | i in 1..n]);

solve satisfy;
output [ if fix(ys[j]) == i then "|Q" else "|_" endif ++
  if j == n then "\n" else "" endif | i,j in 1..n];
