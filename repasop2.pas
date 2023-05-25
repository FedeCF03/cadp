
Program repasop2;

Type 

 poliza = 1..6;
 str = string[20];
 cliente = Record
  cod:integer;
  dni:integer;
  apellido:str;
  nombre:str;
  codp:poliza;
  montob:Integer;
 End;

 montop = array [poliza] Of integer;

 lista = ^nodo;

 nodo = Record
  dato:cliente;
  sig:lista;

 End;

Procedure cargarmontoadd(Var v:montop);

Var 
 i:integer;
Begin
 For i:=1 To 6 Do
  Begin
   ReadLn(v[i]);
  End;
End;


Procedure leercliente( Var c:cliente);
Begin

 ReadLn(c.cod);
 ReadLn(c.dni);
 ReadLn(c.apellido);
 ReadLn(c.nombre);
 ReadLn(c.codp);
 ReadLn(c.montob);

End;

Procedure guardarlista(Var l:lista;c:cliente);

Var nuevo:lista;
Begin

 new(nuevo);
 nuevo^.dato := c;
 nuevo^.sig := l;
 l := nuevo;
End;

Procedure cargarlista(Var l :lista);

Var c:cliente;

Begin
 leercliente(c);
 guardarlista(l,c);
 While Not(c.cod=1122) Do
  Begin
   leercliente(c);
   guardarlista(l,c);
  End;
End;
Procedure informar(c:cliente; v:montop);
Begin
 Writeln(c.cod);
 Writeln(c.dni);
 Writeln(c.apellido);
 Writeln(c.nombre);
 Writeln(c.codp);
 Writeln(c.montob+v[c.codp]);
End;

Procedure eliminar (Var L:lista; cod:integer);

Var actual,ant:lista;
Begin
 actual := l;
 While Not(actual=Nil) And Not(actual^.dato.cod=cod) Do
  Begin
   ant := actual;
   actual := actual^.sig;
  End;

 If Not(actual=Nil) Then
  Begin
   If (actual=l) Then
    Begin
     l := l^.sig;
    End;
   ant^.sig := actual^.sig;


  End;
 Dispose(actual)
End;

Function dni9(dni:integer):Boolean;

Var cant9,digito:integer;
 cumple:boolean;
Begin
 cant9 := 0;

 cumple := false;
 While Not(dni=0) And (2>=cant9) Do
  Begin
   digito := dni Mod 10;
   If (digito=9) Then cant9 := cant9+1;
   dni := dni Div 10;
  End;
 If (cant9>=2)Then cumple := True;
 dni9 := cumple;
End;
Procedure recorrerlista(l:lista;v:montop);






Begin
 While Not(l=Nil) Do
  Begin
   informar(l^.dato,v);

   If (dni9(l^.dato.dni))Then WriteLn(l^.dato.apellido + l^.nombre);

   l:l^.sig;
  End;
End;

Var 
 l:lista;
 v:montop;
Begin

 l := Nil;
 cargarlista(l);
 recorrerlista(l,v);


End.
