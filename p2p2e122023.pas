
Program p2p2e122023;

Function rendimientoporhora(zona:Integer): real
;

Var rendimientophora,resultado: real;
Begin
  If (zona=1)Then
    rendimientophora := 6
  Else If (zona =2)Then
         rendimientophora := 2.6
  Else If (zona =3)Then rendimientophora := 1.4
  Else
    write('ilegal');
  rendimientoporhora := rendimientophora;
End;

Procedure rendimientosoja(canthectareas,zona,precio:integer);

Var toneladasdesoja,rendimientotal,rendimientouwu: real;
Begin
  rendimientotal := 0;

  toneladasdesoja := canthectareas*rendimientoporhora(zona);
  rendimientotal := precio*toneladasdesoja;
  WriteLn('el rendimiento esperado es de ',rendimientotal:0:2);

End;

Begin

  rendimientosoja(2,2,2);

End.
