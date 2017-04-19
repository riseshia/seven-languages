Animal = "dog".
case Animal of
  "dog" -> underdog;
  "cat" -> thundecat
end.

case Animal of
  "elephant" -> dumbo;
  _ -> something_else
end.

if
  ProgramsTerminated > 0 ->
    success;
  ProgramsTerminated < 0 ->
    error
end.

% 6.3.2
Nagate = fun(I) -> -I end.
Nagate(1).
Nagate(-1).

% 6.3.2
Numbers = [1, 2, 3, 4].
lists:foreach(fun(Number) -> io:format("~p~n", [Number]) end, Numbers).

Print = fun(Number) -> io:format("~p~n", [Number]) end
lists:foreach(Print, Numbers).

lists:map(fun(X) -> X + 1 end, Numbers).
map(F, [H|T]) -> [F(H) | map(F, T)];
map(F, []) -> [];

% List comprehension
Fibs = [1, 1, 2, 3, 5].
Double = fun(X) -> X * 2 end.
lists:map(Double, Fibs).
[Double(X) || X <- Fibs].
[X * 2|| X <- [1, 1, 2, 3, 5]].
