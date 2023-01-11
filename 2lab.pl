% 8. Опpеделить последний элемент списка.
last_elem([X],X).
last_elem([_|T],X):-last_elem(T,X).

%	?-last_elem([1, 2, 3, 4, 5, 1, 12], X)
%	X = 12

% 17. Добавить элемент в конец списка.

add_elem(E,[],[E]).
add_elem(E,[H|T],[H|T1]):-add_elem(E,T,T1).
/*
	?- add_elem(1,[],L).
	L = [1] ;
    
    ?- add_elem(1,[1,2,3],L).
    L = [1, 2, 3, 1] ;
*/
