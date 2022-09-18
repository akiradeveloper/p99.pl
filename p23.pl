remove_at(X, [X|Xs], 1, Xs).
remove_at(Y, [X|Xs], K, [X|Remain]) :-
	K > 1,
	K1 is K-1,
	remove_at(Y, Xs, K1, Remain).

rnd_select(Xs, N, [Y|Ys]) :-
	N > 0,
	length(Xs, Len),
	Len1 is Len+1,
	random(1, Len1, K),
	remove_at(Y, Xs, K, Zs),
	N1 is N-1,
	rnd_select(Zs, N1, Ys).
rnd_select(_, 0, []).

