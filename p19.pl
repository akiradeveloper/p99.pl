split([X|Xs], Rem, [X|As], Bs) :- Rem > 0, Rem1 is Rem-1, split(Xs, Rem1, As, Bs).
split([X|Xs], 0, As, [X|Bs]) :- split(Xs, 0, As, Bs).
split([], _, [], []).

rotate(L1, N, L2) :-
	length(L1, Len),
	divmod(N, Len, _, Rem),
	split(L1, Rem, Xs, Ys),
	append(Ys, Xs, L2).
