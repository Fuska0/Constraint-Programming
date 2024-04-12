int: N;
array[1..N] of var 0..N: magic;
       
constraint forall([magic[i] = count_eq(magic,i-1) | i in 1..N]); % funkcja cout zwraca ilosc wystapien i-1 w tablicy magic dlatego ograniczylem ze wartosc na indeksie i musi byc rowna ilosci wysapien w i-1 (bo w zadaniu indeksujemy od 0) w tablicy 
  
solve satisfy;
  
output [ "magic sequence = ", show(magic),";\n"];
