penultimate([A,B], A).
penultimate([H|T], A) :- penultimate(T, A).
