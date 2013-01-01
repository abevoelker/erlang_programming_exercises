-module(boolean).
-compile(export_all).

b_not(true) ->
  false;
b_not(false) ->
  true.
b_and(true, true) ->
  true;
b_and(true, false) ->
  false;
b_and(false, false) ->
  false;
b_and(false, true) ->
  false.
b_nand(A, B) ->
  b_not(b_and(A, B)).