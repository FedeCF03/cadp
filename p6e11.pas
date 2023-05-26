
Program p6e11;

Type 

 alumno = Record

  nroalu:integer;
  apellido:string;
  promedio:real;
 End;
 lista = ^nodo;

 nodo = Record
  dato:alumno;
  sig:lista;

 End;

Procedure leeralumno(a:alumno);

Begin

 ReadLn(a.nroalu);
 If Not(a.nroalu=0)Then
  Begin
   ReadLn(a.apellido);
   ReadLn(a.promedio);
  End;

End;

Procedure insertarordenado(Var l:lista; a:alumno);

Var nuevo,act,ant:lista;

Begin
 new(nuevo);
 nuevo^.dato = a;
 act := l;
 ant := l;

 While Not(act=Nil) And Not(a.promedio>act^.dato.promedio) Do
  Begin
   ant := act;
   act := act^.sig;
  End;

 If (act=ant)Then
  Begin
   l := nuevo;
  End
 Else
  ant^.sig = nuevo;
 nuevo^.sig := act;
End;

Procedure cargaralumno(Var l:lista);

Var a:alumno;

Begin
 leeralumno(a);
 While Not(a.nroalu=0) Do
  Begin
   insertarordenado(l,a);
   leeralumno(a);
  End;
End;

Procedure premio(l:lista);

Var i :integer
       Begin

        For i:=0 To 9 Do
         Begin
          l^.dato.apellido;
          WriteLn( l^.dato.nroalu,' ',l^.dato.nroalu);

          l^.sig;




         End;


       End;

Var l:lista;

Begin
 l := Nil;
 cargaralumno(l);
 premio(l);


End.
