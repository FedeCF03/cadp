
Program p2p2e10;

Var numero,sumasdigitos: integer;

Const parar = 123456;
Function  sumadigitos: integer;

Var resto,digito: integer;
Begin
  digito := numero Mod 10;
  sumasdigitos := sumasdigitos + digito;
  numero := numero Div 10;
End;

Var cantdigitos : integer;
Begin
  sumasdigitos := 0;
  cantdigitos := 0;
  Repeat
    ReadLn(numero);
    If numero<>parar Then
      Repeat
        sumadigitos;
      Until sumadigitos=0;


  Until numero=parar;
  WriteLn(cantdigitos);
  WriteLn(sumasdigitos);


End.
