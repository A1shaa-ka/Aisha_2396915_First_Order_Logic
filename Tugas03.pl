male(david).
male(jack).
male(john).
male(ray).
male(peter).
female(amy).
female(karen).
female(susan).
female(liza).
female(mary).

parent(david, liza).
parent(amy, liza).
parent(david, john).
parent(amy, john).
parent(jack, ray).
parent(karen, ray).
parent(jack, susan).
parent(karen, susan).
parent(john, peter).
parent(susan, peter).
parent(john, mary).
parent(susan, mary).

spouse(david, amy).
spouse(jack, karen).
spouse(john, susan).

child(X, Y) :- parent(Y, X).
grandparent(X, Z) :- parent(X, Y), parent(Y, Z).
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.
cousin(X, Y) :- parent(Z, X), parent(W, Y), sibling(Z, W), X \= Y.
aunt_or_uncle(X, Y) :- sibling(X, Z), parent(Z, Y).
