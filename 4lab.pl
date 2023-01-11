% 4. Реализовать процедуру упорядочения списка методом перебора перестановок.

sorted([]).
sorted([X]).

sorted([X,Y|T]) :- X=<Y, sorted([Y|T]).

permute([], []).
permute([X|T], L) :-
    permute(T, L1),
    select(X, L, L1).

% sort list holds if A is sorted list of B

arrangement(X,Y) :- permute(X,Y), sorted(Y).

/*
	?- arrangement([1,2,3,4,4,4,5,1,9], L).
    L = [1, 1, 2, 3, 4, 4, 4, 5, 9] ;
    
    ?- arrangement([1,9,8,7,2], L).
    L = [1, 2, 7, 8, 9] ;
*/