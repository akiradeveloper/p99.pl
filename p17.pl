split([X|Xs], Rem, [X|As], Bs) :- Rem > 0, Rem1 is Rem-1, split(Xs, Rem1, As, Bs).
split([X|Xs], 0, As, [X|Bs]) :- split(Xs, 0, As, Bs).
split([], _, [], []).
