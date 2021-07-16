:- use_module(begin_tests_con).

puntaje(shrek2, 9).
puntaje(pulpFiction, 8).

obraMaestra(Pelicula):-
   puntaje(Pelicula, 10).

:-begin_tests_con(unos_tests, [puntaje(backToTheFuture, 10)]).

test(una_pelicula_es_obra_maestra_si_su_puntaje_es_10, nondet):-
    obraMaestra(backToTheFuture).


test(shrek_2_tiene_9_puntos, nondet):-
    puntaje(shrek2, 9).

test(back_to_the_future_tiene_10_puntos, nondet):-
    puntaje(backToTheFuture, 10).

:-end_tests(unos_tests).



:-begin_tests(otros_tests).

test(aca_volver_al_futuro_no_tiene_10_puntos):-
    not(puntaje(backToTheFuture, 10)).

test(shrek_2_tiene_9_puntos, nondet):-
    puntaje(shrek2, 9).

:-end_tests(otros_tests).