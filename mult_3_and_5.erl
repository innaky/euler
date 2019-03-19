-module(mult_3_and_5).
-export([range/2, mult_3_or_5/1, my_map/2, sum/1]).

range(Init, End) when End == Init ->
    [];
range(Init, End) when End < Init ->
    [];
range(Init, End) ->
    [Init|range(Init+1, End)].

mult_3_or_5(X) ->
    case X of
	X when X rem 3 == 0 ->
	    X;
	X when X rem 5 == 0 ->
	    X;
	_Else ->
	    0
    end.

my_map(_, []) ->
    [];
my_map(Fn, [H|T]) ->
    [Fn(H)|my_map(Fn, T)].

sum(List) ->
    sum(List, 0).
sum([], Acc) ->
    Acc;
sum([H|T], Acc) ->
    sum(T, Acc+H).

%% mult_3_and_5:sum(mult_3_and_5:my_map(fun mult_3_and_5:mult_3_or_5/1, mult_3_and_5:range(0, 10))).
%% 23
%% mult_3_and_5:sum(mult_3_and_5:my_map(fun mult_3_and_5:mult_3_or_5/1, mult_3_and_5:range(0, 1000))).
%% 233168
