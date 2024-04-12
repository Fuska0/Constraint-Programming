int: nodesNumber; % pobieranie informacji o ilosci wierzcholkow grafu
array[1..nodesNumber, 1..nodesNumber] of bool: edges;  %pobieranie grafy


array[1..nodesNumber] of var int: nodes; % deklaracja ze kazdy kolor grafu musi byc od 1 do dlugosc_grafu
var int: colorsNumber = max([nodes[i] | i in 1..nodesNumber]); % deklaracja ze ilosc kolorow w grafie to maksymalnie uzyty kolor  


constraint forall([nodes[i] > 0 | i in 1..nodesNumber]); % kazdy kolor grafu musi byc wiekszy od 0 
constraint forall([nodes[i] <= nodesNumber | i in 1..nodesNumber]); % kazdy kolor grafu musi byc mniejszy badz rowny ilosci wierzcholkow
constraint forall(i in 1..nodesNumber, j in 1..nodesNumber)(if edges[i,j] = true then nodes[i] != nodes[j] else true endif);
% wrunek ze jezeli miedz wierzcholkami jest krawedz to ich kolory nie moga byc takie same 
constraint nodes[1] = 1; % pierwszy wierzcholek grafu ma kolor nr 1


solve minimize colorsNumber; % szukamy rozwiazania dla najmniejszej ilosci kolorow 


output [show(colorsNumber), " colors\n",] ++
       [show(nodes[i]) ++ " " | i in 1..nodesNumber]
