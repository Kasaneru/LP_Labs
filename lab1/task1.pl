mylen([],0).
mylen([X|T],N) :- mylen(T,N1), N is N1+1.

remove(X,[X|T],T).
remove(X,[H|T],[H|R]) :- remove(X,T,R).

member(X,L) :- remove(X,L,_).

append([],L,L).
append([X|T],L,[X|R]) :- append(T,L,R).

pemute([],[]).
permute(L,[X|T]) :- remove(X,L,R), permute(R,T).

sublist(R,L) :- append(_,T,L), append(R,_,T).

remove_last([_],[]).
remove_last([X|T],[X|T2]) :- remove_last(T, T2).

issorted([]).
issorted([_]).
issorted([X,Y|Z]) :- X=<Y, issorted([Y|Z]).
