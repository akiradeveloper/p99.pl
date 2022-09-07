elem_at(N, L, X) :- elem_at(N, L, 1, X).
elem_at(N, [X|_], N, X).
elem_at(N, [_|Tail], CUR, X) :- CUR1 is CUR+1, elem_at(N, Tail, CUR1, X).
