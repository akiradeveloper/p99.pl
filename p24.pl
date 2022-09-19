:- ensure_loaded(p22).
:- ensure_loaded(p23).

rnd_select2(N,M,L) :-
	range(1,M,Xs),
	rnd_select(Xs,N,L).
