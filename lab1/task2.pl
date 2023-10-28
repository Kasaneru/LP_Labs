% Task 2: Relational Data

sum([],A,A).
sum([H|T],A,S):-A1 is A+H,sum(T,A1,S).

mylen([],0).
mylen([X|T],N) :- mylen(T,N1), N is N1+1.

% The line below imports the data
:- ['two.pl'].

group(X,L) :- bagof([N,C,M],grade(X,N,C,M),L).
avg_mark(X, Y) :- findall(M,grade(X,N,C,M),L1), sum(L1,0,S), mylen(L1,L), Y is S/L.

notpassed(C,L) :- findall([X,N,M],grade(X,N,C,2),L).
%findall([X,N,M], M=:=2, L).
