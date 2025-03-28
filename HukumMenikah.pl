menikah(wati, andi).
anakKandung(wati, budi).
saudaraKembar(budi, andi).

is_saudaraKandung(X, Y) :- anakKandung(X, Z), anakKandung(Y, Z).
is_keponakan(X, Y) :- anakKandung(X, Z), saudaraKembar(Z, Y).
not(sah(menikah(X, Y))) :- is_keponakan(X, Y).
