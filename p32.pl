gcd(X,0,X).
gcd(X,1,1).
gcd(X,Y,G) :- X >= Y, Y > 0, M is X mod Y, gcd(Y, M, G).
gcd(X,Y,G) :- Y > X, gcd(Y,X,G).
