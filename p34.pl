:- ensure_loaded(p33).

phi(N, Ans) :- phi(N, 1, Ans).

phi(N, Cur, Ans) :- Cur < N, coprime2i(N, Cur, B), Cur1 is Cur+1, phi(N, Cur1, Ans1), Ans is Ans1 + B.
phi(N, N, 0).

coprime2i(X, Y, 1) :- coprime(X, Y).
coprime2i(X, Y, 0) :- not(coprime(X, Y)).

