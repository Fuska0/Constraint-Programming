include "cumulative.mzn";



array[1..N, 1..N] of var int: puzzle; % ograniczam ze tablica puzzle ma miec inty


array[int,int] of int: board; % pobieram wstepne dane sudoku
set of int: PuzzleRange = index_set_1of2(board); % to juz tu bylo na poczatku xd
int: N = max(PuzzleRange); % to juz tu bylo na poczatku xd
int: S = floor(sqrt(N)); % to juz tu bylo na poczatku xd

constraint assert(index_set_2of2(board) = PuzzleRange, "The board should be a square array");  % to juz tu bylo na poczatku xd
constraint assert(S * S == N, "The board size should be a square of a natural number"); % to juz tu bylo na poczatku xd
constraint assert(min(board) = 0, "The board should contain at least one empty space and no negative values"); % to juz tu bylo na poczatku xd
constraint assert(max(board) <= N, "The board shouldn't contain values bigger than the board size"); % to juz tu bylo na poczatku xd

constraint forall(i in 1..N, j in 1..N)(if board[i,j] != 0 then puzzle[i,j] = board[i,j] else true endif); % ograniczenie ze poczatkowe wartosci musza zostac
constraint forall([puzzle[i,j] > 0 | i in 1..N, j in 1..N]); % ograniczenie ze wpisywane wartosci maja byc wieksze od 0
constraint forall([puzzle[i,j] <= N | i in 1..N, j in 1..N]); % i mniejsze od N
constraint forall(j in 1..N)(alldifferent([puzzle[i,j] | i in 1..N])); % ograniczenie ze nie moga powtarzac sie w poziomie
constraint forall(i in 1..N)(alldifferent([puzzle[i,j] | j in 1..N])); % ograniczenie ze nie moga powtarzac sie w pionie
constraint forall(i in 1..S, j in 1..S) (alldifferent([puzzle[(i - 1) * S + k , (j - 1) * S + l] | k in 1..S, l in 1..S]));
% ograniczenie ze nie moga powtarzac sie w podtablicach


solve satisfy;



output [ show(puzzle[i,j]) ++ " " ++
  if j mod S == 0 then " " else "" endif ++ if j == N /\ i != N then
  if i mod S == 0 then "\n\n" else "\n" endif else "" endif
    | i,j in PuzzleRange ] ++ ["\n"];
