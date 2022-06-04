-module(sorting).
-export([output_evens/1, output_odds/1, output_sorted/1, sort/2, highest/5, swap/4, replace/4]).

output_evens(List) ->
    Evens = lists:filter(fun (X) -> X rem 2 == 0 end, List),
    io:format("~p\n", [Evens]).

output_odds(List) ->
    Odds = lists:filter(fun (X) -> X rem 2 == 1 end, List),
    io:format("~p\n", [Odds]).

output_sorted(List) ->
    N_list = sort(List, length(List)),
    io:format("~p\n", [N_list]).

sort(List, 2) ->
    HighestIndex = highest(List, 0, 0, 0, 2),
    swap(List, 0, HighestIndex, 0);
sort(List, Length) ->
    HighestIndex = highest(List, 0, 0, 0, Length),
    SortStep = swap(List, 0, HighestIndex, Length-2),
    sort(SortStep, Length-1).

highest([First | List], High, Index, _, Length) when (First >= High) and (Length > 1) ->
    highest(List, First, Index+1, Index, Length-1);
highest([First | List], High, Index, HighIn, Length) when (First < High) and (Length > 1) ->
    highest(List, High, Index+1, HighIn, Length-1);
highest([First| _], High, Index, _, 1) when First >= High ->
    Index;
highest([First| _], High, _, HighIn, 1) when First < High->
    HighIn.

swap([First | Rest], Count, Index1, Index2) when (Count < Index1) ->
    [First | swap(Rest, Count+1, Index1, Index2)];
swap(List, _, Index1, Index2) when (Index1 > Index2)->
    List;
swap([First | Rest], _, Index1, Index2) ->
    replace(First, Rest, 0, Index2-Index1).

replace(Item, [First | List], Count, Index) when Count < Index ->
    [Sendback | Rest] = replace(Item, List, Count+1, Index),
    [Sendback, First | Rest];
replace(Item, [Sendback | Rest], _, _) ->
    [Sendback, Item | Rest].