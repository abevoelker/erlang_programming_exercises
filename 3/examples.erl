-module(examples).
-export([sum/1,sum/2,create/1,reverse_create/1]).

% exercise 3-1

sum(N) when N > 0 -> sum_acc(N, 0).
sum_acc(0, Carry) -> Carry;
sum_acc(N, Carry) -> sum_acc(N - 1, Carry + N).

sum(N, M)                         -> sum_acc(N, M, 0).
sum_acc(N, M, Carry) when N =:= M -> Carry + M;
sum_acc(N, M, Carry) when N < M   -> sum_acc(N, M - 1, Carry + M).

% exercise 3-2

create(N) when N > 0 -> create([], N).
create(List, 0)      -> List;
create(List, N)      -> create([N|List], N-1).

% naive version of reverse_create:
% reverse_create(N) when N > 0 -> lists:reverse(create(N)).

reverse_create(N) when N > 0            -> reverse_create([], N, 1).
reverse_create(List, N, M) when N =:= M -> [M|List];
reverse_create(List, N, M)              -> reverse_create([M|List], N, M+1).