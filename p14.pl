dupli([X|Xs], [X,X|Zs]) :- dupli(Xs, Zs).
dupli([], []).
