% We are seeing Kth X of X,X|Xs 
mv(X, [X|Xs], K, X, Z, Rem) :- K1 is K+1, mv(X, Xs, K1, X, Z, Rem).
mv(X, [], 1, X, X, []).
mv(X, [], K, X, [K,X], []) :- K > 1.
mv(X, [Y|Ys], 1, X, X, [Y|Ys]) :- X \= Y.
mv(X, [Y|Ys], K, X, [K,X], [Y|Ys]) :- X \= Y, K > 1.

encode([], []).
encode([X|Xs], [Y|Ys]) :- mv(X, Xs, 1, X, Y, Rem), encode(Rem, Ys).
