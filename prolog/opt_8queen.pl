use_module(library(clpfd)).

valid_queen((_, Col)) :-
  Range = [1,2,3,4,5,6,7,8],
  member(Col, Range).

valid_board([]).
valid_board([H|T]) :-
  valid_queen(H),
  valid_board(T).

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
  Board = [(1, _), (2, _), (3, _), (4, _), (5, _), (6, _), (7, _), (8, _)],
  valid_board(Board),

  cols(Board, Cols),
  diag1(Board, Diags1),
  diag2(Board, Diags2),
  
  all_distinct(Cols),
  all_distinct(Diags1),
  all_distinct(Diags2).
