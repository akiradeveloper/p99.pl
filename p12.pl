decode([], []).
decode([X|Xs], [X|Zs]) :- \+ is_list(X), decode(Xs, Zs).
decode([[1,X]|Xs], [X|Zs]) :- decode(Xs, Zs).
decode([[N,X]|Xs], [X|Zs]) :- N > 1, N1 is N-1, decode([[N1,X]|Xs], Zs).
