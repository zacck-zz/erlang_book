-module(functions_test).
-import(functions, [head/1]).
-include_lib("eunit/include/eunit.hrl").


% Test that head/1 returns the start of the list
head_test() -> 1 = head([1,2]).


