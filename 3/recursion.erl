-module(recursion).
-export([bump/1, average/1, even/1, member/2, sum_acc/2, bump_acc/2, reverse/1]).

% Add 1 to every number in the list:
bump([])            -> [];
bump([Head | Tail]) -> [Head + 1 | bump(Tail)].

% Average a list:
% average(List) -> sum(List) / len(List).
% this version handles division by zero errors:
average(List) ->
  case len(List) of
    0 -> 0;
    _ -> sum(List) / len(List)
  end.

sum([])            -> 0;
sum([Head | Tail]) -> Head + sum(Tail).

len([])         -> 0;
len([_ | Tail]) -> 1 + len(Tail).

% Filter a list to contain only even numbers:
even([])                                 -> [];
even([Head | Tail]) when Head rem 2 == 0 -> [Head | even(Tail)];
even([_ | Tail])                         -> even(Tail).

% Determine if element is a member of a list:
member(_, [])      -> false;
member(H, [H | _]) -> true;
member(H, [_ | T]) -> member(H, T).

% Accumulator version of sum:
% sum -> sum_acc(List, 0).
sum_acc([],Sum)           -> Sum;
sum_acc([Head|Tail], Sum) -> sum_acc(Tail, Head+Sum).

% Accumulator version of bump:
% bump -> bump_acc(List, []).
bump_acc([],Acc)             -> reverse(Acc);
bump_acc([Head | Tail], Acc) -> bump_acc(Tail, [Head+1 | Acc]).

reverse(List) -> reverse_acc(List, []).

reverse_acc([], Acc)    -> Acc;
reverse_acc([H|T], Acc) -> reverse_acc(T, [H|Acc]).