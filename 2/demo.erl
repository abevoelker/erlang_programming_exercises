-module(demo).
-export([double/1]).

% This is a comment.
% Everything on a line % is ignored.

double(Value) ->
  times(Value, 2).
times(X,Y) ->
  X*Y.