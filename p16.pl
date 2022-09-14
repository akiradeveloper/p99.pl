drop(Xs, N, Ys) :- drop(Xs, N, 1, Ys).
drop([], _, _, []).
drop([_|Xs], N, N, Ys) :- drop(Xs, N, 1, Ys).
drop([X|Xs], N, K, [X|Ys]) :- K < N, K1 is K+1, drop(Xs, N, K1, Ys).
	
