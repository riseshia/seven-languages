use_module(library(clpfd)).

valid_queen((X, Y)) :-
  Range = [1,2,3,4,5,6,7,8],
  member(X, Range),
  member(Y, Range).

valid_board([]).
valid_board([H|T]) :-
  valid_queen(H),
  valid_board(T).

rows([], []).
rows([(R, _)|QT], [R|RT]) :-
  rows(QT, RT).

cols([], []).
cols([(C, _)|QT], [C|CT]) :-
  cols(QT, CT).

diag1([], []).
diag1([(R, C)|QT], [D|DT]) :-
  D is C - R,
  diag1(QT, DT).

diag2([], []).
diag2([(R, C)|QT], [D|DT]) :-
  D is C + R,
  diag2(QT, DT).

eight_queens(Board) :-
  length(Board, 8),
  valid_board(Board),

  rows(Board, Rows),
  cols(Board, Cols),
  diag1(Board, Diags1),
  diag2(Board, Diags2),
  
  all_distinct(Rows),
  all_distinct(Cols),
  all_distinct(Diags1),
  all_distinct(Diags2).
