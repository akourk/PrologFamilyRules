parent(michael, jack).
parent(john, michael).
parent(john, arthur).
parent(sandy, jack).
parent(sandy, anny).
parent(bob, anny).
male(michael).
male(jack).
male(bob).
male(john).
male(arthur).
female(anny).
female(sandy).

brother(X, Y) :- parent(Z, X), parent(Z, Y), male(X), male(Z).
uncle(X, Y) :- parent(Z, Y), brother(X, Z).
parents(X, Y, Z) :- parent(Y, X), parent(Z, X), (Y \= Z).
halfsibling(X, Y) :- parents(X, A, B), parents(Y, A, C), (B \= C), (X \= Y).

