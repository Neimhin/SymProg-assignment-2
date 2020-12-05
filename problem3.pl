:- discontiguous(tran/3).


accept(L) :- steps(q0,L,F), final(F).
steps(Q,[],Q).
steps(Q,[H|T],Q2) :- tran(Q,H,Qn), steps(Qn,T,Q2).

tran(q0, 0, q0).
tran(q0, 1, q0).

q0 --> [1], q1.

q0 --> [0], q0.
q0 --> [1], q0.

tran(q0, 1, q1).

q1 --> [0], q2.
q1 --> [1], q2.

tran(q1, 0, q2).
tran(q1, 1, q2).

q2 --> [0].
q2 --> [1].

tran(q2, 0, q3).
tran(q2, 1, q3).

final(q3).

l3(String, Numeral):-
  sameLength(String, Numeral),
  q0(String, []).

sameLength([], 0).
sameLength([_|T], succ(N)):-
  sameLength(T, N).

numeral(0).
numeral(succ(N)):-
  numeral(N).
