-module(tester).

-export([add/2, greet/2, greet_and_add_two/1]).


add(A,B) ->
	A + B.


% Show Greetings
% io:format/1 is the standard function used to output text
hello() ->
	io:format("Hello World!~n").



greet_and_add_two(X) ->
	hello(),
	add(X, 2).


greet(male, Name) ->
	io:format("Hello Mr. ~s\n", [Name]);

greet(female, Name) ->
	io:format("Hello Ms. ~s\n", [Name]);

greet(_, Name) ->
	io:format("Hello ~s\n", [Name]).
