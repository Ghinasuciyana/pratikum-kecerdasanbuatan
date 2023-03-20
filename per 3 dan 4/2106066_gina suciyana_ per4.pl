laki_laki(david).
laki_laki(john).
laki_laki(ray).
laki_laki(jack).
laki_laki(peter).
perempuan(amy).
perempuan(liza).
perempuan(susan).
perempuam(karen).
perempuan(mary).

suami(david, amy).
anak(liza, david).
anak(john, david).
anak(liza, amy).
anak(john, amy).
anak(peter, john).
anak(mary, john).
saudara(susan, ray).
anak(susan, jack).
anak(susan, karen).
anak(ray, jack).
anak(ray, karen).


orangtua(X, Y) :- ayah(X, Y).
orangtua(X, Y) :- ibu(X, Y).

ayah(X, Y) :- orangtua(X, Y), suami(X, Z).
ibu(X, Y) :- orangtua(X, Y), istri(X, Z).

istri(X, Y) :- suami(Y, X).

saudara_kandung(X, Y) :- orangtua(Z, X), orangtua(Z, Y), X \= Y.

keturunan(X, Y) :- anak(X, Y).
keturunan(X, Y) :- anak(X, Z), keturunan(Z, Y).
