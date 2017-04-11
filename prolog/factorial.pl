fact(1, 1).
fact(6, 3) :- fact(2, 2).
fact(F, N) :-
  N > 0,
  N1 is N - 1,
  fact(F1, N1),
  F is F1 * N.
