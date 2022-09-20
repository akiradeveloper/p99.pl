:- ensure_loaded(p23).

rnd_permu(Xs, Ys) :-
	length(Xs, Len),
	rnd_select(Xs, Len, Ys).
