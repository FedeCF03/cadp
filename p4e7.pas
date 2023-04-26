
Program p4e7;


Type 
 rango = 0..9;
 numeros = array[rango] Of integer;

Procedure separardigitos(Var numero,digito:integer);
Begin
 digito := numero Mod 10;
 numero := numero Div 10;

End;
Procedure inicializararray(Var a:numeros);

Var i:integer;
Begin
 For  i:=0 To 9 Do
  Begin
   a[i] := 0;
  End;
End;


Var 
 numero,digito:integer;
 a:numeros;
Begin
 inicializararray(a);
 digito := 0;
 ReadLn(numero);
 While Not(numero=-1) Do
  Begin
   While Not(numero=0) Do
    Begin
     separardigitos(numero,digito);

    End;


  End;


End.
