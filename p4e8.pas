
Program p4p8;

Type 
 rango = 0..4;
 fechadenacimiento = Record
  ano:integer;
  mes:integer;
  dia:integer;
 End;
 alumnos = Record
  nroinscip:integer;
  dni:integer;
  apellido:string;
  nombre:string;
  fecha:fechadenacimiento;
 End;

 arrayalumnos = array [rango] Of alumnos;

Procedure leeralumos(Var v:arrayalumnos);

Var i:integer;
Begin

 For i:=0 To 2 Do
  Begin
   ReadLn(v[i].nroinscip);
   ReadLn(v[i].dni);
   ReadLn(v[i].apellido);
   ReadLn(v[i].nombre);
   ReadLn(v[i].fecha.ano);
   ReadLn(v[i].fecha.dia);
   ReadLn(v[i].fecha.mes);

  End;

End;
Procedure esdnipar(dni:integer;Var cantalumpar:integer);

Var digito,numero:integer;
 espar:Boolean;

Begin
 numero := dni;
 espar := true;
 While Not(numero=0)And(espar=true) Do
  Begin
   digito := numero Mod 10;
   numero := numero Div 10;
   If (digito Mod 2 = 1) Then espar := false;

  End;
 If (espar=true)Then cantalumpar := cantalumpar+1;

End;
Procedure mvalumnos( v:arrayalumnos; Var a1,a2:integer);

Var i:integer;
Begin
 For i:=0 To 2 Do
  Begin
   If (2022-v[i].fecha.ano>2022-v[a1].fecha.ano)  Then
    Begin
     a2 := a1;
     a1 := i;
    End
   Else If (2022-v[i].fecha.ano>2022-v[a2].fecha.ano)Then a2 := i;

  End;

End;

Var v:arrayalumnos;
 cantalumpar,i,a1,a2:integer;
Begin
 cantalumpar := 0;
 leeralumos(v);
 a1 := 0;
 a2 := 0;
 For i:=0 To 2 Do
  Begin
   esdnipar(v[i].dni,cantalumpar);
   mvalumnos(v,a1,a2);
  End;
 WriteLn(v[a1].nombre);
 WriteLn(v[a2].nombre);


End.
