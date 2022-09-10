pack(L1, L2) :- pack(L1, [], [], L2).
pack([], [], L, L).
pack([], Ys, Acc, Zs) :- pack([], [], [Ys|Acc], Zs).
pack([X|Xs], [], Acc, Zs) :- pack(Xs, [X], Acc, Zs). 
pack([X|Xs], [Y|Ys], Acc, Zs) :- X \= Y, pack(Xs, [X], [[Y|Ys]|Acc], Zs).
pack([X|Xs], [Y|Ys], Acc, Zs) :- X == Y, pack(Xs, [X,Y|Ys], Acc, Zs).
