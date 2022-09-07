flat(X, [X]) :- not(is_list(X)).
flat([], []).
flat([H|T], L) :- flat(H, H1), flat(T, T1), append(H1, T1, L).
