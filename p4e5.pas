
Program p4e5;

Type 

 vector = array[integer] Of 0..99;

Function elementoMaximo(arrai:vector): integer;

Var i,mayor,pmayor: integer;
Begin
 mayor := 0;











//aca capaz tenes que poner menos por si tiene de mayor vvalor -1 no se que preferiran los profes(preguintar si se da laocacion)}
 For i:=0 To 99 Do

  Begin
   If (arrai[i]>mayor) Then
    Begin
     mayor := arrai[i];
     pmayor := i;
    End;


  End;
 elementoMaximo := pmayor;
End;
Procedure cargararray(Var arrai:vector);

Var 
 i,ingreso: integer;
Begin

 writeln('ongresa el numero flaco');
 ReadLn(ingreso);
 While Not(ingreso=0)And Not(i=99) Do
  Begin
   arrai[i] := ingreso;
   writeln('ongresa el numero flaco');

   ReadLn(ingreso);

  End;




End;

Var 
 arrai:vector;
Begin


 cargararray(arrai);

End.
