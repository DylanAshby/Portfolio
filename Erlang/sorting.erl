-module(sorting).
-export([output_evens/1, output_odds/1, output_sorted/1, sort/2, highest/5, swap/4, replace/4]).

% OUTPUT_EVENS
% Uses the filter lambda function to filter out all odd numbers
output_evens(List) ->
    Evens = lists:filter(fun (X) -> X rem 2 == 0 end, List),    % applies a modulo 2 to the list and filters out all items that do not have a remainder of 0
    io:format("~p\n", [Evens]).

% OUTPUT_ODDS
% Uses the filter lambda function to filter out all even numbers
output_odds(List) ->
    Odds = lists:filter(fun (X) -> X rem 2 == 1 end, List),     % applies a modulo 2 to the list and filters out all items that do not have a remainder of 1
    io:format("~p\n", [Odds]).

% OUTPUT_SORTED
% This is the parent function called for the insertion sort.
% The inputted listed is passed to sort() and the result is printed.
output_sorted(List) ->
    N_list = sort(List, length(List)),
    io:format("~p\n", [N_list]).

% SORT
% This function is the top level of the sorting algorithm.
% The passed list is ran through sequentially and the highest number found each step is placed before the previously sorted max value.
sort(List, 2) ->        % This overload for sort only runs when the list is down to two items. It swaps values as needed, then returns the final section of the sorted list.
    HighestIndex = highest(List, 0, 0, 0, 2),
    swap(List, 0, HighestIndex, 0);
sort(List, Length) ->   % This overload gets the current highest value in the list, then calls swap to place it at the top index in the list. It then repeats for one index lower until done.
    HighestIndex = highest(List, 0, 0, 0, Length),
    SortStep = swap(List, 0, HighestIndex, Length-2),
    sort(SortStep, Length-1).

% HIGHEST
% This function find the index of the highest value in the list and then returns.
highest([First | List], High, Index, _, Length) when (First >= High) and (Length > 1) ->        % This overload sets the current value and its index as the highest value if its higher than the stored highest value.
    highest(List, First, Index+1, Index, Length-1);
highest([First | List], High, Index, HighIn, Length) when (First < High) and (Length > 1) ->    % This overload maintains the current highest value and its index.
    highest(List, High, Index+1, HighIn, Length-1);
highest([First| _], High, Index, _, 1) when First >= High ->    % This overload is for the end of the list iteration, and sets the current value and its index as the highest value if its higher than the stored highest value. 
    Index;
highest([First| _], High, _, HighIn, 1) when First < High->     % This overload is for the end of the list iteration, and maintains the current highest value and its index.
    HighIn.

% SWAP
% This function swaps the value at index1 with the value at (index2 + 1).
swap([First | Rest], Count, Index1, Index2) when (Count < Index1) ->    % This overload recursively moves to the place where index1 is so the replace function can be called from that point.
    [First | swap(Rest, Count+1, Index1, Index2)];
swap(List, _, Index1, Index2) when (Index1 > Index2)->                  % This overload checks for the special case where index2 references index1 or an earlier reference. An unchanged list is returned.
    List;
swap([First | Rest], _, Index1, Index2) ->                              % This overload is the endpoint for recursion where the list needs to be changed. The list, starting at index 1, is repalced with the list segment modified by replace().
    replace(First, Rest, 0, Index2-Index1).

% REPLACE
% This function replaces the item at the passed index in the list with the variable Item. The displaced item is then placed at the first index in the list.
replace(Item, [First | List], Count, Index) when Count < Index ->   % This overload recursively moves to the passed item to the location at the passed index. As the recursion returns, the displaced item is maintaiend at the front of the list.
    [Sendback | Rest] = replace(Item, List, Count+1, Index),
    [Sendback, First | Rest];
replace(Item, [Sendback | Rest], _, _) ->                           % This overload is the endpoint for the recursion. It returns the list at its current index, with the passed item now at that index, and the displaced item at the front.
    [Sendback, Item | Rest].