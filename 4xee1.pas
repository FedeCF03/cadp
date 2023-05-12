
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


Procedure cargaresclavos(Var v:vempleados);

Var i:integer;
Begin
 For i:=1 To 5 Do
  Begin
   readln(v[i].codemple);
   readln(v[i].codpais);
   readln(v[i].antiguedad);
   readln(v[i].sueldo);
  End;
End;



//procedure para contar los que tienen mas de 10 años de antiguedad y sueldo < 1500
Procedure antiguedad(antiguedad:integer;Var antiguos:integer);
Begin
 If (10<antiguedad)Then  antiguos := antiguos +1;

End;
Procedure paisconmayorcantempleados (cemple,i:integer;Var cemplem,p:integer);

Begin
 If (cemplem<cemple ) Then
  Begin
   cemplem := cemple;
   p := i;
  End;

End;
Procedure codricos(sueldo:real;Var altsueldo:real;Var codricos:codemple; cod:codemple);

Begin
 If (altsueldo<sueldo) Then
  Begin
   altsueldo := sueldo;
   codricos := cod;
  End;
End;
Procedure leerempleados(v:vempleados);

Var altsueldo:real;

Var codricos:codemple;

Var x,i,cemple,cemplem,antiguos :integer;
Begin
 x := 1;
 For i:=1 To 25 Do
  Begin
   cemple := 0;
   While (v[x].codpais=i) Do
    Begin
     antiguedad(v[x].antiguedad,antiguos);
     codricos(v[x].sueldo,altsueldo,codricos,v[x].codemple);
     cemple := cemple+1;
     x := x+1;
    End;
   paisconmayorcantempleados(cemple,cemplem);


   write('el que mas cobra en el pais',i,'es ',codricos);

  End;
 write('la cantidad de personas con mas de 10 años de antiguedad y les pagan poco es ',antiguos);
 write('el pais con mas empleados ',p);

End;

Var v:vempleados;
Begin
 cargaresclavos(v);
 leerempleados(v);

End.
