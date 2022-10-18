zip([],[],[]).
zip([X|Xs], [Y|Ys], [X-Y|Zs]) :- zip(Xs, Ys, Zs).

unzip([_-X|Xs], [X|Ys]) :- unzip(Xs, Ys).
unzip([],[]).

sort_by_level(Levels, Xs, Ys) :-
  zip(Levels, Xs, Ps),
  keysort(Ps, Qs),
  unzip(Qs, Ys).

map_len([X|Xs], [L|Ls]) :- length(X, L), map_len(Xs,Ls).
map_len([],[]).

lsort(Xs,Ys) :-
  map_len(Xs, Ls),
  sort_by_level(Ls, Xs, Ys).
  
