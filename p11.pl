pack([],[]).
pack([X|Xs],[Z|Zs]) :- transfer(X,Xs,Ys,Z), pack(Ys,Zs).
transfer(X,[],[],[X]).
transfer(X,[Y|Ys],[Y|Ys],[X]) :- X \= Y.
transfer(X,[X|Xs],Ys,[X|Zs]) :- transfer(X,Xs,Ys,Zs).

encode([X|Xs],[Z|Zs]) :- pack([X|Xs],[Y|Ys]), encode_lst([Y|Ys],[Z|Zs]).
encode_one([X|Xs],[N,X]) :- length([X|Xs], N).
encode_lst([],[]).
encode_lst([X|Xs],[Y|Ys]) :- encode_one(X,Y), encode_lst(Xs,Ys).

encode_mod(Xs,Zs) :- encode(Xs,Ys), tf(Ys,Zs).
tf([],[]).
tf([X|Xs],[Y|Ys]) :- tf1(X,Y), tf(Xs,Ys).
tf1([1,X],X).
tf1([N,X],[N,X]).

