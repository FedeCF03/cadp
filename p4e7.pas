
Program p4e7;


Type 
 rango = 0..9;
 numeros = array[rango] Of integer;

Procedure separardigitos(Var numero,digito:integer);



Begin
 While Not(numero=0) Do
  Begin

   digito := numero Mod 10;
   numero := numero Div 10;

   ocurrencia(digito,numero,a);

  End;

End;
Procedure ocurrencia(digito,numero:integer;Var a:numeros);
Begin
 a[digito] := a[digito]+1;

End;

Procedure inicializararray(Var a:numeros);

Var i:integer;
Begin
 For  i:=0 To 9 Do
  Begin
   a[i] := 0;
  End;
End;
Procedure digitomsleido(v:numeros;Var n,p :integer);

Var i:integer;
Begin
 For i:=0 To 9 Do
  Begin
   If (v[i]>n)Then
    Begin
     N := v[i];
     p := i;
    End;
  End;
End;

Function digitosemocuremsa(a:numeros):integer;

Var i:integer;
Begin
 For i:=0 To 9 Do
  Begin
   If (a[i]=0) Then WriteLn(i,'no tuvo concurrencias, como vos ');



  End;


End;

Var 
 numero,digito,x,p:integer;
 a:numeros;
Begin
 x := 0;
 p := 0;
 inicializararray(a);
 digito := 0;
 ReadLn(numero);
 While Not(numero=-1) Do
  Begin

   separardigitos(numero,digito);

   ReadLn(numero);


  End;
 digitomsleido(a,x,p);
 digitosemocuremsa(a);
 WriteLn(a[0]);
End.
