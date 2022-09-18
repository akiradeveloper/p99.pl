range(N,M,L) :- range(N,N,M,L).
range(M,N,M,[M]).
range(I,N,M,[I|Zs]) :- I1 is I+1, range(I1,N,M,Zs).
