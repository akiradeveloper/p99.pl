slice(Xs, N, M, Ys) :- slice(Xs, 1, N, M, Ys).
slice([], _, _, _, []).
slice([X|Xs], K, N, M, [X|Ys]) :- N =< K, K =< M, K1 is K+1, slice(Xs, K1, N, M, Ys), !.
slice([_|Xs], K, N, M, Ys) :- K1 is K+1, slice(Xs, K1, N, M, Ys).
