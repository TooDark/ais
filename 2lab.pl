% 8. Опpеделить последний элемент списка.
last_elem([X],X).
last_elem([_|T],X):-last_elem(T,X).

% ?-last_elem([1, 2, 3, 4, 5, 1, 12], X)
% X = 12

% 17. Добавить элемент в конец списка.

add_elem([],X,_,[X]).
add_elem(T,X,1,[X|T]):-!.
add_elem([Z|T],X,N,[Z|T1]):-N1 is N-1, add_elem(T,X,N1,T1).

% ?- add_elem([1,2,3],4,4,L)
% L = [1, 2, 3, 4]

