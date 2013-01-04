-module(examples).
-export([sum/1]).

% exercise 3-1

sum(N) when N > 0 -> sum_acc(N, 0).
sum_acc(0, Carry) -> Carry;
sum_acc(N, Carry) -> sum_acc(N - 1, Carry + N).
