
Program p4p2p4;

Const rango = 10;

Type 
 alumnos = Record
  nro:integer;
  apellido:string;
  nombre:string;
  casist:integer;
 End;
 valum = array[1..rango] Of alumnos;


Procedure leeralumnos(Var v:valum);

Var i:integer;

Begin

 For i:=1 To 3 Do
  Begin
   WriteLn('inserto el nro de alumno');
   ReadLn(v[i].nro);
   WriteLn('inserto el apellido');
   ReadLn(v[i].apellido);
   WriteLn('inserto el nombre');
   ReadLn(v[i].nombre);
   WriteLn('inserto la cantidad de asistencias');
   ReadLn(v[i].casist);

  End;


End;

Function retornaposicion(v:alumnos;nro:integer):integer;

Var i,p:integer;
Begin
 i := 1;
 p := 1;
 While Not(nro=v[i].nro) Do
  Begin

   If (nro=v[i].nro) Then p := i;
   i := i+1;
  End;

 retornaposicion := p;

End;

Procedure insertarclalumno(Var v :alumnos;Var dl:integer;Var pude:boolean;num,pos:integer);

Var i :integer;
Begin

 pude := false;

 If ( (dl+1<=rango) And (pos>=1) And (pos<=dl)) Then
  Begin
   For i :=dl Downto pos Do
    Begin
     a[i+1] := a[i];
    End;
   pude := true;
   a[pos] := num;
  End;
End;


Procedure eliminaralumno(Var v :alumnos;Var dl:integer;Var pude:boolean;pos:integer);

Var i :integer;
Begin
 pude:false;
 If ( (pos>=1) And (pos<=dl)) Then
  Begin
   For i :=pos To dl-1 Do
    Begin
     a[i] := a[i+1];
    End;
   dl := dl-1;
   pude := true;

  End;

End;


Procedure eliminaresp(Var v :alumnos;Var dl:integer;Var pude:boolean;nro:integer)
Begin

 eliminaralumno(v,dl,pude,retornaposicion(v,nro));

End;


Procedure asist0(Var v :alumnos;Var dl:integer;Var pude:boolean;nro:integer);

i := integer;
Begin

 While (i>dl)  Do
  Begin
   If (v[i].casist=0) Then
    a[i] := a[i+1];
   dl := dl-1;
   i := i+1;
  End;
 pude := true;
End;
