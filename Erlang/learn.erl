-module(learn).
-export([output/0, sort/2, first_half/3, second_half/0, half/1]).

output() ->
    Test = [9676, 288, 7215, 4277, 4639, 9495, 936, 7001, 666, 8849, 4596, 1551, 5729, 119, 6787, 4467, 5733, 5135, 2951, 2303],
    %Test = [2, 1],
    % Test2 = [1, 2],
    
    io:format("~p\n", [sort(Test, length(Test))]).


sort(List, Length) when Length > 2->
    [sort(first_half(List, half(Length), 0), half(Length)) | sort(second_half(), half(Length))];
sort([First | Last], 2) when First > Last->
    [Last, First];
sort([First | Last], 2) when First =< Last->
    [First, Last].
    

first_half([First | Rest], Half_len, Count) when Count < Half_len ->
    Out = [First | first_half(Rest, Half_len, Count+1)],
    io:format("Out: ~p\n", [Out]),
    Out;
first_half([First | _], _, _) ->
    [First].

second_half() ->
    [0, 0].

half(Num) when Num > 1 ->
    Num/2;
half(Num) when Num < 2 ->
    io:format("Out: ~p\n", [Num]),
    1.