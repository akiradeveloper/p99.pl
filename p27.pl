group3([], [], [], []).
group3([X|Xs], [X|G1], G2, G3) :- group3(Xs, G1, G2, G3), length(G1, Len), Len < 2.
group3([X|Xs], G1, [X|G2], G3) :- group3(Xs, G1, G2, G3), length(G2, Len), Len < 3.
group3([X|Xs], G1, G2, [X|G3]) :- group3(Xs, G1, G2, G3), length(G3, Len), Len < 4.

group([X|Xs], [N|Ns], [[X|G]|Gs]) :- group(Xs, [N|Ns], [G|Gs]), length(G, Len), Len < N.
group([], Ns, Gs) :- length(Ns, Len), dup([], Len, Gs).

dup(X, 0, []).
dup(X, N1, [X|Ys]) :- dup(X, N, Ys), N1 is N+1.
