% regla uno parte A
reglas(Edad,Enfermedad,Exposicion,Resultado):-
      Edad='infancia',
      Enfermedad='oncologicas',
      Exposicion='nada',
      Resultado='infeccion temprana'.
% regla uno parte B
reglas(Edad,Enfermedad,Exposicion,Resultado):-
      Edad='infancia',
      Enfermedad='si',
      Exposicion='nada',
      Resultado='infeccion temprana',!.
% regla dos
reglas(Edad,Enfermedad,Exposicion,Resultado):-
      Edad='infancia',
      Enfermedad='cardiovasculares',
      Exposicion='nada',
      Resultado='infeccion pulmonar',!.
% regla tres
reglas(Edad,Enfermedad,Exposicion,Resultado):-
      Edad='infancia',
      Enfermedad='Respiratoria',
      Exposicion='nada',
      Resultado='infeccion hiperinflamacion',!.
% regla cuatro
reglas(Edad,Enfermedad,Exposicion,Resultado):-
      Edad='ninez',
      Enfermedad='oncologicas',
      Exposicion='nada',
      Resultado='infeccion temprana',!.
% regla cinco parte A
reglas(Edad,Enfermedad,Exposicion,Resultado):-
      Edad='ninez',
      Enfermedad='si',
      Exposicion='bajo',
      Resultado='infeccion temprana',!.
% regla cinco parte B
reglas(Edad,Enfermedad,Exposicion,Resultado):-
      Edad='ninez',
      Enfermedad='si',
      Exposicion='medio',
      Resultado='infeccion temprana',!.
% regla seis
reglas(Edad,Enfermedad,Exposicion,Resultado):-
      Edad='ninez',
      Enfermedad='si',
      Exposicion='alto',
      Resultado='infeccion pulmonar',!.
% regla siete parte a
reglas(Edad,Enfermedad,Exposicion,Resultado):-
      Edad='ninez',
      Enfermedad='cardiovasculares',
      Exposicion='bajo',
      Resultado='infeccion pulmonar',!.
% regla siete parte B
reglas(Edad,Enfermedad,Exposicion,Resultado):-
      Edad='ninez',
      Enfermedad='cardiovasculares',
      Exposicion='medio',
      Resultado='infeccion pulmonar',!.
% regla ocho
reglas(Edad,Enfermedad,Exposicion,Resultado):-
      Edad='ninez',
      Enfermedad='cardiovasculares',
      Exposicion='alto',
      Resultado='infeccion hiperinflamacion',!.
% regla nueve
reglas(Edad,Enfermedad,Exposicion,Resultado):-
      Edad='ninez',
      Enfermedad='respiratorias',
      Exposicion='nada',
      Resultado='infeccion hiperinflamacion',!.
% regla diez
reglas(Edad,Enfermedad,Exposicion,Resultado):-
      Edad='adolescencia',
      Enfermedad='oncologicas',
      Exposicion='nada',
      Resultado='infeccion temprana',!.
% regla once
reglas(Edad,Enfermedad,Exposicion,Resultado):-
      Edad='adolescencia',
      Enfermedad='si',
      Exposicion='bajo',
      Resultado='infeccion temprana',!.
% regla doce parte A
reglas(Edad,Enfermedad,Exposicion,Resultado):-
      Edad='adolescencia',
      Enfermedad='si',
      Exposicion='medio',
      Resultado='infeccion pulmonar',!.
% regla doce parte B
reglas(Edad,Enfermedad,Exposicion,Resultado):-
      Edad='adolescencia',
      Enfermedad='si',
      Exposicion='alto',
      Resultado='infeccion pulmonar',!.
% regla trece parte A
reglas(Edad,Enfermedad,Exposicion,Resultado):-
      Edad='adolescencia',
      Enfermedad='cardiovasculares',
      Exposicion='bajo',
      Resultado='infeccion pulmonar',!.
% regla trece parte B
reglas(Edad,Enfermedad,Exposicion,Resultado):-
      Edad='adolescencia',
      Enfermedad='cardiovasculares',
      Exposicion='medio',
      Resultado='infeccion pulmonar',!.
% regla catorce
reglas(Edad,Enfermedad,Exposicion,Resultado):-
      Edad='adolescencia',
      Enfermedad='cardiovasculares',
      Exposicion='alto',
      Resultado='infeccion hiperinflamacion',!.
% regla quince
reglas(Edad,Enfermedad,Exposicion,Resultado):-
      Edad='adolescencia',
      Enfermedad='respiratorias',
      Exposicion='nada',
      Resultado='infeccion hiperinflamacion',!.
% regla dieciseis
reglas(Edad,Enfermedad,Exposicion,Resultado):-
      Edad='juventud',
      Enfermedad='oncologicas',
      Exposicion='nada',
      Resultado='infeccion temprana',!.
% regla diecisiete
reglas(Edad,Enfermedad,Exposicion,Resultado):-
      Edad='juventud',
      Enfermedad='si',
      Exposicion='nada',
      Resultado='infeccion pulmonar',!.
% regla dieciocho parte A
reglas(Edad,Enfermedad,Exposicion,Resultado):-
      Edad='juventud',
      Enfermedad='cardiovasculares',
      Exposicion='bajo',
      Resultado='infeccion pulmonar',!.
% regla dieciocho parte B
reglas(Edad,Enfermedad,Exposicion,Resultado):-
      Edad='juventud',
      Enfermedad='cardiovasculares',
      Exposicion='medio',
      Resultado='infeccion pulmonar',!.
% regla diecinueve
reglas(Edad,Enfermedad,Exposicion,Resultado):-
      Edad='juventud',
      Enfermedad='cardiovasculares',
      Exposicion='alto',
      Resultado='infeccion hiperinflamacion',!.
% regla veinte
reglas(Edad,Enfermedad,Exposicion,Resultado):-
      Edad='juventud',
      Enfermedad='respiratorias',
      Exposicion='nada',
      Resultado='infeccion hiperinflamacion',!.
% regla veintiuno parte A
reglas(Edad,Enfermedad,Exposicion,Resultado):-
      Edad='adultez',
      Enfermedad='oncologicas',
      Exposicion='bajo',
      Resultado='infeccion temprana',!.
% regla veintiuno parte B
reglas(Edad,Enfermedad,Exposicion,Resultado):-
      Edad='adultez',
      Enfermedad='oncologicas',
      Exposicion='medio',
      Resultado='infeccion temprana',!.
% regla veintidos
reglas(Edad,Enfermedad,Exposicion,Resultado):-
      Edad='adultez',
      Enfermedad='oncologicas',
      Exposicion='alto',
      Resultado='infeccion pulmonar',!.
% regla veintitres
reglas(Edad,Enfermedad,Exposicion,Resultado):-
      Edad='adultez',
      Enfermedad='si',
      Exposicion='nada',
      Resultado='infeccion pulmonar',!.
% regla veinticuatro
reglas(Edad,Enfermedad,Exposicion,Resultado):-
      Edad='adultez',
      Enfermedad='cardiovasculares',
      Exposicion='bajo',
      Resultado='infeccion pulmonar',!.
% regla veinticinco parte A
reglas(Edad,Enfermedad,Exposicion,Resultado):-
      Edad='adultez',
      Enfermedad='cardiovasculares',
      Exposicion='medio',
      Resultado='infeccion hiperinflamacion',!.
% regla veinticinco parte B
reglas(Edad,Enfermedad,Exposicion,Resultado):-
      Edad='adultez',
      Enfermedad='cardiovasculares',
      Exposicion='alto',
      Resultado='infeccion hiperinflamacion',!.
% regla veintiseis
reglas(Edad,Enfermedad,Exposicion,Resultado):-
      Edad='adultez',
      Enfermedad='respiratorias',
      Exposicion='nada',
      Resultado='infeccion hiperinflamacion',!.
% regla veintisiete
reglas(Edad,Enfermedad,Exposicion,Resultado):-
      Edad='ancianidad',
      Enfermedad='oncologicas',
      Exposicion='bajo',
      Resultado='infeccion temprana',!.
% regla veintiocho parte A
reglas(Edad,Enfermedad,Exposicion,Resultado):-
      Edad='ancianidad',
      Enfermedad='oncologicas',
      Exposicion='medio',
      Resultado='infeccion pulmonar',!.
% regla veintiocho parte B
reglas(Edad,Enfermedad,Exposicion,Resultado):-
      Edad='ancianidad',
      Enfermedad='oncologicas',
      Exposicion='alto',
      Resultado='infeccion pulmonar',!.
% regla veintinueve
reglas(Edad,Enfermedad,Exposicion,Resultado):-
      Edad='ancianidad',
      Enfermedad='si',
      Exposicion='bajo',
      Resultado='infeccion pulmonar',!.
% regla treinta parte A
reglas(Edad,Enfermedad,Exposicion,Resultado):-
      Edad='ancianidad',
      Enfermedad='si',
      Exposicion='medio',
      Resultado='infeccion hiperinflamacion',!.
% regla treinta parte B
reglas(Edad,Enfermedad,Exposicion,Resultado):-
      Edad='ancianidad',
      Enfermedad='si',
      Exposicion='alto',
      Resultado='infeccion hiperinflamacion',!.
% regla treinta y uno
reglas(Edad,Enfermedad,Exposicion,Resultado):-
      Edad='ancianidad',
      Enfermedad='cardiovasculares',
      Exposicion='nada',
      Resultado='infeccion hiperinflamacion',!.


periodo(PT,'nada'):-
      PT=<2,!.
periodo(PT,'bajo'):-
      PT>2,
      PT<6,!.
periodo(PT,'medio'):-
      PT<14,
      PT>=6,!.
periodo(PT,'alto'):-
      PT>=14.

edadpaciente(Edad,'infancia'):-
             Edad<6,!.
edadpaciente(Edad,'ninez'):-
             Edad>=6,
             Edad<12,!.
edadpaciente(Edad,'adolescencia'):-
             Edad>=12,
             Edad<20,!.
edadpaciente(Edad,'juventud'):-
             Edad>=20,
             Edad<25,!.
edadpaciente(Edad,'adultez'):-
             Edad>=25,
             Edad<60,!.
edadpaciente(Edad,'ancianidad'):-
             Edad>=60.


       
inicio(Edades,Enfermedad,Dias,Resultado):-
      periodo(Dias,Exposicion),
      edadpaciente(Edades,Edad),
      reglas(Edad,Enfermedad,Exposicion,Resultado),
      write(Resultado).