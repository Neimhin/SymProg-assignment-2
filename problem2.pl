% Problem 2, Assignment 2
unq_strt --> [h(Col1, Nat1, Pet1)], [h(Col2, Nat2, Pet2)], [h(Col3, Nat3, Pet3)],
              {
                is_permutation([Col1, Col2, Col3], [red, blue, green]),
                is_permutation([Nat1, Nat2, Nat3], [english, spanish, japanese]),
                is_permutation([Pet1, Pet2, Pet3], [snail, zebra, jaguar])
              }.

is_permutation([], []).
is_permutation([H|T], List) :-
          removeOrFail(H, List, List_minus_H),
          is_permutation(T, List_minus_H).

removeOrFail(H, [H|T], T).
removeOrFail(H, [A|T] , [A|T_minus_H]) :-
          removeOrFail(H, T, T_minus_H).
          
h(C, N, P) :- colour(C), nationality(N),pet(P).

colour(red).
colour(blue).
colour(green).

nationality(english).
nationality(japanese).
nationality(spanish).

pet(jaguar).
pet(zebra).
pet(snail).
