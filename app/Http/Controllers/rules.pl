inicio(I,GD,GS,Riesgo,Social,Financiera,Resultado):-
    B=I-((GD*30)-GS),
    balance_c(B,Balance),
    rules(Riesgo,Social,Financiera,Balance,Resultado),
    write(Resultado).

balance_c(B,Balance):- 
    B<0,
    Balance="nulo",
    !.
balance_c(B,Balance):-
    B>100,
    B=<200,
    Balance="bajo",
    !.
balance_c(B,Balance):-
    B>200,
    B=<300,
    Balance="medio",
    !.
balance_c(B,Balance):- 
    B>300,
    Balance="alto",
    !.
% RULES 1
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='nulo',
      Social='buenas',
      Financiera='buenas',
      Balance="bajo",
      Resultado='CREDITO BAJO',!.
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='nulo',
      Social='malas',
      Financiera='buenas',
      Balance="bajo",
      Resultado='CREDITO BAJO',!.
% RULES 2
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='nulo',
      Social='buenas',
      Financiera='malas',
      Balance="medio",
      Resultado='CREDITO BAJO',!.
% RULES 3
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='nulo',
      Social='malas',
      Financiera='buenas',
      Balance="medio",
      Resultado='CREDITO BAJO',!.
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='nulo',
      Social='malas',
      Financiera='malas',
      Balance="medio",
      Resultado='CREDITO BAJO',!.
% RULES 4
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='nulo',
      Social='malas',
      Financiera='malas',
      Balance="alto",
      Resultado='CREDITO BAJO',!.
% RULES 5
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='nulo',
      Social='buenas',
      Financiera='buenas',
      Balance="medio",
      Resultado='CREDITO MEDIO',!.
% RULES 6
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='nulo',
      Social='buenas',
      Financiera='malas',
      Balance="alto",
      Resultado='CREDITO MEDIO',!.
% RULES 7
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='nulo',
      Social='malas',
      Financiera='buenas',
      Balance="alto",
      Resultado='CREDITO MEDIO',!.  
% RULES 8
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='nulo',
      Social='buenas',
      Financiera='buenas',
      Balance="alto",
      Resultado='CREDITO ALTO',!.
% RULES 9
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='nulo',
      Social='buenas',
      Financiera='malas',
      Balance="bajo",
      Resultado='CREDITO DENEGADO',!.
% RULES 10
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='nulo',
      Social='buenas',
      Financiera='buenas',
      Balance="nulo",
      Resultado='CREDITO BAJO',!.
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='nulo',
      Social='buenas',
      Financiera='malas',
      Balance="nulo",
      Resultado='CREDITO BAJO',!.   
% RULES 11
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='nulo',
      Social='malas',
      Financiera='malas',
      Balance="bajo",
      Resultado='CREDITO DENEGADO',!.  
% RULES 12
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='nulo',
      Social='malas',
      Financiera='buenas',
      Balance="nulo",
      Resultado='CREDITO DENEGADO',!.
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='nulo',
      Social='malas',
      Financiera='malas',
      Balance="nulo",
      Resultado='CREDITO DENEGADO',!.  
% RULES 13
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='bajo',
      Social='malas',
      Financiera='malas',
      Balance="alto",
      Resultado='CREDITO BAJO',!. 
% RULES 14
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='bajo',
      Social='buenas',
      Financiera='malas',
      Balance="alto",
      Resultado='CREDITO BAJO',!. 
% RULES 15
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='bajo',
      Social='malas',
      Financiera='buenas',
      Balance="medio",
      Resultado='CREDITO BAJO',!.
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='bajo',
      Social='malas',
      Financiera='malas',
      Balance="medio",
      Resultado='CREDITO BAJO',!.  
% RULES 16
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='bajo',
      Social='malas',
      Financiera='buenas',
      Balance="bajo",
      Resultado='CREDITO BAJO',!. 
% RULES 17
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='bajo',
      Social='buenas',
      Financiera='buenas',
      Balance="bajo",
      Resultado='CREDITO BAJO',!.
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='bajo',
      Social='buenas',
      Financiera='malas',
      Balance="bajo",
      Resultado='CREDITO BAJO',!.
% RULES 18
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='bajo',
      Social='buenas',
      Financiera='malas',
      Balance="alto",
      Resultado='CREDITO MEDIO',!.
% RULES 19
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='bajo',
      Social='malas',
      Financiera='buenas',
      Balance="alto",
      Resultado='CREDITO MEDIO',!.
% RULES 20
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='bajo',
      Social='buenas',
      Financiera='buenas',
      Balance="medio",
      Resultado='CREDITO MEDIO',!.
% RULES 21
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='bajo',
      Social='buenas',
      Financiera='buenas',
      Balance="alto",
      Resultado='CREDITO ALTO',!.
% RULES 22
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='bajo',
      Social='buenas',
      Financiera='buenas',
      Balance="nulo",
      Resultado='CREDITO DENEGADO',!.
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='bajo',
      Social='buenas',
      Financiera='malas',
      Balance="nulo",
      Resultado='CREDITO DENEGADO',!.
% RULES 23
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='bajo',
      Social='malas',
      Financiera='buenas',
      Balance="nulo",
      Resultado='CREDITO DENEGADO',!.
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='bajo',
      Social='malas',
      Financiera='malas',
      Balance="nulo",
      Resultado='CREDITO DENEGADO',!.
% RULES 24
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='bajo',
      Social='malas',
      Financiera='malas',
      Balance="bajo",
      Resultado='CREDITO DENEGADO',!.
% RULES 25
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='medio',
      Social='buenas',
      Financiera='buenas',
        Balance="bajo",
      Resultado='CREDITO BAJO',!.
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='medio',
      Social='buenas',
      Financiera='malas',
      Balance="bajo",
      Resultado='CREDITO BAJO',!.
% RULES 26
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='medio',
      Social='buenas',
      Financiera='buenas',
        Balance="medio",
      Resultado='CREDITO BAJO',!.
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='medio',
      Social='buenas',
      Financiera='malas',
      Balance="medio",
      Resultado='CREDITO BAJO',!.
% RULES 27
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='medio',
      Social='malas',
      Financiera='buenas',
        Balance="bajo",
      Resultado='CREDITO BAJO',!.
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='medio',
      Social='malas',
      Financiera='malas',
      Balance="bajo",
      Resultado='CREDITO BAJO',!.
% RULES 28
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='medio',
      Social='malas',
      Financiera='buenas',
        Balance="medio",
      Resultado='CREDITO BAJO',!.
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='medio',
      Social='malas',
      Financiera='malas',
      Balance="medio",
      Resultado='CREDITO BAJO',!.
% RULES 29
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='medio',
      Social='buenas',
      Financiera='buenas',
        Balance="alto",
      Resultado='CREDITO MEDIO',!.
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='medio',
      Social='buenas',
      Financiera='malas',
      Balance="alto",
      Resultado='CREDITO MEDIO',!.
% RULES 30
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='medio',
      Social='malas',
      Financiera='buenas',
        Balance="alto",
      Resultado='CREDITO MEDIO',!.
% RULES 31
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='medio',
      Social='buenas',
      Financiera='buenas',
        Balance="nulo",
      Resultado='CREDITO DENEGADO',!.
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='medio',
      Social='buenas',
      Financiera='malas',
      Balance="nulo",
      Resultado='CREDITO DENEGADO',!.
% RULES 32
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='medio',
      Social='malas',
      Financiera='buenas',
        Balance="nulo",
      Resultado='CREDITO DENEGADO',!.
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='medio',
      Social='malas',
      Financiera='malas',
      Balance="nulo",
      Resultado='CREDITO DENEGADO',!.
% RULES 33
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='medio',
      Social='malas',
      Financiera='malas',
      Balance="alto",
      Resultado='CREDITO DENEGADO',!.
% RULES 34
rules(Riesgo,Social,Financiera,Balance,Resultado):-
      Riesgo='alto',
      Resultado='CREDITO DENEGADO',!.
