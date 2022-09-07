last(X, [X]).
last(X, [_|B]) :- last(X, B).
