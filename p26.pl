comb(0, _, []).
comb(K, [X|Xs], [X|L]) :-
	K1 is K-1,
	comb(K1, Xs, L).
comb(K, [_|Xs], L) :-
	K > 0,
	comb(K, Xs, L).
