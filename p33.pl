:- ensure_loaded(p32).

coprime(X,Y) :- gcd(X,Y,G), 1 is G.
