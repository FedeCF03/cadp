
Program p2p2e0;

Var numero,sumasdigitos: integer;


Function  sumadigitos: integer;

Var digito: integer;
Begin
  digito := numero Mod 10;
  sumasdigitos := sumasdigitos + digito;
  numero := numero Div 10;
End;

Var cantdigitos : integer;
Begin
  sumasdigitos := 0;
  ReadLn(numero);
  cantdigitos := 0;
  Repeat
    sumadigitos;
    cantdigitos := 1+cantdigitos;

  Until sumadigitos=0;
  WriteLn(cantdigitos);
  WriteLn(sumasdigitos);

End.
