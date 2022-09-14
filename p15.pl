dupli(Xs, N, Zs) :- dupli(Xs, N, N, Zs).
dupli([X|Xs], N, K, [X|Zs]) :- K > 0, K1 is K-1, dupli([X|Xs], N, K1, Zs).
dupli([_|Xs], N, 0, Zs) :- dupli(Xs, N, N, Zs).
dupli([], _, _, []).
