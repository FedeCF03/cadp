
Program ejer7;

Var viejo,nuevo: Real;

Var codigo : integer ;
Begin
  codigo := 0;

  While (codigo<>32767) Do
    Begin
      Write('codigo del producto');
      ReadLn(codigo);
      Write('precio viejo');
      ReadLn(viejo);
      Write('precio nuevo');
      ReadLn(nuevo);
      If ((viejo/10)+viejo<nuevo)Then
        WriteLn('el precio nuevo supera en un 10%')
      Else
        WriteLn('el precio nuevo no supera en un 10% al viejo');



    End;

End.
