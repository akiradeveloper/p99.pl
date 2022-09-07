rev(L1,L2) :- rev(L1,L2,[]).
rev([],L,L).
rev([X|Tail],L1,Acc) :- rev(Tail,L1,[X|Acc]).
