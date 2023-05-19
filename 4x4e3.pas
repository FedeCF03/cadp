
Program empleados3x3;

Type 

 codemple = 1..2000;
 codpais = 1..25;

 empleados = Record

  codemple:codemple;
  codpais:codpais;
  antiguedad:integer;
  sueldo:real;
 End;
 vempleados = array [1..2000] Of empleados;
Procedure antiguedad(antiguedad:integer;Var antiguos:integer);
Begin
 If (10<antiguedad)Then  antiguos := antiguos +1;

End;
Procedure codricos(sueldo:real;Var altsueldo:real;Var codricos:codemple; cod:codemple);

Begin
 If (altsueldo<sueldo) Then
  Begin
   altsueldo := sueldo;
   codricos := cod;
  End;
End;


Procedure cargaresclavos(Var v:vempleados;Var antiguos:integer);

Var i:integer;
Begin
 While Not(codemple=0) Do
  Begin

   readln(v[i].codemple);
   If Not(v[i].codemple=0)Then
    Begin
     readln(v[i].codpais);
     readln(v[i].antiguedad);
     antiguedad(v[i].antiguedad,antiguos);
     readln(v[i].sueldo);
    End;
  End;
End;
