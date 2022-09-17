remove_at(X, [X|Xs], 1, Xs).
remove_at(Y, [X|Xs], K, [X|Remain]) :-
	K > 1,
	K1 is K-1,
	remove_at(Y, Xs, K1, Remain).
