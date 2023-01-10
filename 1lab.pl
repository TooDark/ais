woman(X):- mother(X); daughter(X).
man(X):- father(X); son(X).

mother(ann).
mother(ann, lisa).
mother(ann, steve).

father(dave).
father(dave, lisa).
father(dave, steve).

son(steve).
son(jack).
daughter(lisa).

son(Y, X) :- son(Y) , father(X) ; son(Y) , mother(X).
daughter(Y, X) :- daughter(Y) , father(X) ; daughter(Y) , mother(X).

child(X, Y) :- son(X) , father(Y) ; son(X), mother(Y).
child(X, Y) :- daughter(X) , father(Y) ; daughter(X), mother(Y).