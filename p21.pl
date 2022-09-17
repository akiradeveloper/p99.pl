insert_at(A, [X|Xs], K, [X|Ys]) :-
	K>1,
	K1 is K-1,
	insert_at(A, Xs, K1, Ys).
insert_at(A, Xs, 1, [A|Xs]).

