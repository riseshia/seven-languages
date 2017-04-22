-module(roulette).
-export([loop/0]).

% Send a number, 1-6.
loop() ->
  receive
    3 -> io:format("bang.~n"), exit({roulette,die,at,erlang:time()});
    _ -> io:format("click~n"), loop()
end.
