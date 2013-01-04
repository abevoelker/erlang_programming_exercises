-module(examples).
-export([sum/1,sum/2]).

% exercise 3-1

sum(N) when N > 0 -> sum_acc(N, 0).
sum_acc(0, Carry) -> Carry;
sum_acc(N, Carry) -> sum_acc(N - 1, Carry + N).

sum(N, M)                         -> sum_acc(N, M, 0).
sum_acc(N, M, Carry) when N =:= M -> Carry + M;
sum_acc(N, M, Carry) when N < M   -> sum_acc(N, M - 1, Carry + M).
