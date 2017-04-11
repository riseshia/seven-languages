count(0, []).
count(Count, [_|Tail]) :- count(TailCount, Tail), Count is TailCount + 1.

count(0, []).
count(Count, [_|Tail]) :- count(TailCount, Tail), Count is TailCount + 1.

count2(Count, List) :- tail_count(0, List, Count).
tail_count(Count, [], Count).
tail_count(CC, [_|T], Count) :- NC is CC + 1, tail_count(NC, T, Count).

sum(0, []).
sum(Total, [Head|Tail]) :- sum(Sum, Tail), Total is Head + Sum.

average(0, []).
average(Average, List) :-
  sum(Sum, List),
  count(Count, List),
  Average is Sum/Count.
