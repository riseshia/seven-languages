-module(double).
-export([double_all/1]).

double_all([]) -> [];
double_all([F|R]) -> [F + F|double_all(R)].
