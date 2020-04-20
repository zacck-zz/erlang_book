-module(functions).

-compile(export_all). %should be replaced with -export

% Collecting elements using pattern matching
head([H|_]) -> H.

second([_,S|_]) -> S.

% Comparison using pattern matching
same(X,X) ->
	true;
same(_,_) ->
	false.

% Bound Variables
valid_time({Date = {Y,M,D}, Time ={ H, Min, S }}) ->
	io:format("The date tuple (~p) says today is ~p/~p/~p,~n", [Date, Y, M, D]),
	io:format("The time tuple (~p) indicates: ~p:~p:~p.~n", [Time,H,Min,S]);
valid_time(_) ->
	io:format("Stop feeding me wrong data!~n").

% Using Guard clauses
old_enough(X) when X >= 16 -> true;
old_enough(_) -> false.

% combining Guards
right_age(X) when X >= 16 , X =< 104 -> true;
right_age(_) -> false.


wrong_age(X) when X < 16; X > 104 -> true;
wrong_age(_) -> false.
