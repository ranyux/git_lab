person(volk).
person(nif).
person(naf).
person(nuf).

theme(fauna).
theme(flora).
theme(sport).
theme(cosmos).

place(1).
place(2).
place(3).
place(4).

left(1,2).
left(2,3).
left(3,4).
left(4,1).

right(1,4).
right(2,1).
right(3,2).
right(4,3).

opposite(1,3).
opposite(3,1).
opposite(2,4).
opposite(4,2).

different(A, B, C, D) :-
    A \= B,
    A \= C,
    A \= D,
    B \= C,
    B \= D,
    C \= D.

solve(Volk, Nif, Naf, Nuf) :-
    Volk = fauna,
    place(V),
    place(N),
    place(A),
    place(U),

    different(V, N, A, U),
    left(V, A),
    opposite(U, A),

    theme(Nif),
    theme(Naf),
    theme(Nuf),

    different(Volk, Nif, Naf, Nuf),

    Nuf \= sport,

    right(CosmosPlace, N),
    (
        CosmosPlace = V,
        Volk = cosmos;
        CosmosPlace = N,
        Nif = cosmos;
        CosmosPlace = A,
        Naf = cosmos;
        CosmosPlace = U,
        Nuf = cosmos
    ).