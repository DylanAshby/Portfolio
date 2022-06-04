-module(test).
-export([run/0, merge/2, split/1]).

run() ->
    List1 = [9676, 288, 7215, 4277, 4639, 9495, 936, 7001, 666, 8849, 4596, 1551, 5729, 119, 6787, 4467, 5733, 5135, 2951],

    io:fwrite("~p\n", [split(List1)]).

% sort(L) ->
%     Result = if
%         length(L) > 1 -> sort()

merge(L1, L2) ->
    L1 ++ L2.

split([Left | Right]) ->
    Left.

% -module(test).
% -export([printnum/0, num/1]).

% printnum() ->
%     L = [1,2,3,0,0],
%     io:fwrite("List size: ~p\n",[num(L)]).

% num(L) ->
%     length([X || X <- L, X < 1]).

% io:fwrite("List size: ~p\n",[num(List1)]),
% io:fwrite("~p\n", [merge(List1, List2)]).

% A1 = array:new(10),
%     10 = array:size(A1),

% sort([First | Last]) when First > Last ->
%     [First | sort(Last)];
% sort([First | Last]) when First < Last ->
%     lists:reverse([First | sort(Last)]);
% sort(Last) -> Last.


% THIS PROVES PATTERN RECGONITION WORKS THIS WAY
% highest([First | List], High, Index, Length) when (First >= High) and (Length > 2) ->
%     io:format("~p\n", [First]),
%     highest(List, First, Index+1, Length-1);
% highest([First | List], High, Index, Length) when (First < High) and (Length > 2) ->
%     io:format("~p\n", [First]),
%     highest(List, High, Index+1, Length-1);
% highest(First, High, Index, 2) when First >= High ->
%     io:format("~p\n", [First]),
%     highest(First, High, Index+1, 1),
%     Index;
% highest(First, High, Index, 1) when First >= High->
%     io:format("CORRECT: ~p\n", [First]),
%     Index-1.
