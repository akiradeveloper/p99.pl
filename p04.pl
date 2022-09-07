len([Head|Tail], N1) :- len(Tail, N), N1 is N+1.
len([], 0).
