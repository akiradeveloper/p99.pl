comp(L1, L3) :- comp(L1, [], L2), reverse(L2, L3).
comp([], L, L).
comp([X|XS], [], L) :- comp(XS, [X], L).
comp([X|XS], [X|YS], L) :- comp(XS, [X|YS], L).
comp([X|XS], [Y|YS], L) :- comp(XS, [X,Y|YS], L).


ans([],[]).
ans([X],[X]).
ans([X,X|Xs],Zs) :- ans([X|Xs],Zs).
ans([X,Y|Ys],[X|Zs]) :- X \= Y, ans([Y|Ys],Zs).
