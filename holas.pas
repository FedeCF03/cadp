
Program funcs;

Var alumnos,promediomedio,legajo : Integer;

Var destacados,promedio: Real;

Begin
  ReadLn(promedio);

  destacados := 0;
  alumnos := 0;
  promediomedio := 0;
  WriteLn('ok');
  While (promedio<>-1) Do
    Begin
      ReadLn(promedio);
      ReadLn(legajo);
      alumnos := alumnos+1;
      WriteLn('ok1');
      If (promedio>=6.5) Then
        promediomedio := promediomedio+1;
      If ((promedio>=8.5) Or(legajo>2500)) Then
        destacados := destacados+1;
      WriteLn('ok3');

      ReadLn(promedio);

    End;
  WriteLn('la cantidad de alumnos fue ',alumnos);
  WriteLn('la cantidad de alumnos con promedio mayor a uno ',promediomedio:0:2:)
  ;
  WriteLn('porcentaje de destacados',(((destacados*100)/80)));
End.
