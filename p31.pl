is_prime(2).
not_prime(X) :- X1 is X-1, between(2, X1, D), is_prime(D), 0 is mod(X,D).
is_prime(X) :- not(not_prime(X)).
