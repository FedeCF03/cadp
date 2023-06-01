
Program repaso;


Type 
 codgenero = [1..5];

 persona = Record
  dni:integer;
  apellido:string;
  nombre:string;
  edad:integer;
  codg:[codgenero];

 End;

 lista = ^nodo;

 nodo = Record

  dato:persona;
  sig:lista;
 End;

 vcodg = array[codgenero] Of integer;

Procedure leerpersona(Var p:persona);

Begin
 ReadLn(p.dni);
 ReadLn(p.apellido);
 ReadLn(p.nombre);
 ReadLn(p.edad);
 ReadLn(p.codg);
End;

Procedure agregarpersona(Var l:lista; p:persona);

Var nuevo:lista;

Begin
 new(nuevo);
 nuevo^.dato := p;
 nuevo^.sig := l;
 l := nuevo;
End;

Procedure cargarpersona(Var l:lista);

Var p:persona;

Begin
 leerpersona(p);
 agregarpersona(l,p);
 While Not(p.dni=33555444) Do
  Begin
   leerpersona(p);
   agregarpersona(l,p);
  End;



End;

Function maspares(cantpares,dni:integer):integer;

Var digito,cantp,cantimp:integer;
Begin
 cantp := 0;
 cantimp := 0;

 While Not(dni=0) Do
  Begin
   digito := dni Mod 10;
   dni := dni Div 10;
   If (digito Mod 2 = 0) Then
    cantp := cantp +1
   Else cantimp := cantimp + 1;
  End;


 If (cantp>cantimp) Then
  maspares := cantpares +1
 Else maspares := cantpares;

End;


Procedure inicializarv ( Var v:codg);

Var i:integer;
Begin
 For i:=1 To 5 Do
  Begin
   v[i] := 0;
  End;


End;

Procedure codsgm (v:vcodg);

Var i,cod1,cod2,cant1,cant2:integer;

Begin
 cod1 := 0;
 cod2 := 0;
 cant1 := 0;
 cant2 := 0;

 For i:=1 To 5 Do
  Begin
   If (v[i]>cant1) Then
    Begin
     cod2 := cod1;
     cant2 := cant1;
     cod1 := i;
     cant1 := v[i];
    End
   Else If (v[i]>cant2) Then
         Begin
          cant2 := v[i];
          cod2 := i;

         End;

   WriteLn('los codg mayores fueron ', cod1 , ' y ',cod2 );
  End;
End;

Procedure eliminar (Var l:lista;dni:integer);

Var ant,act:lista;

Begin


End;

Type 
 persona = Record
  dni:integer;
  apellido:string;
  nombre:string;
  edad:integer;
  codg:[codgenero];

 End;

 lista = ^nodo;

 nodo = Record

  dato:persona;
  sig:lista;
 End;

 vcodg = array[codgenero] Of integer;

Procedure leerpersona(Var p:persona);

Begin
 ReadLn(p.dni);
 ReadLn(p.apellido);
 ReadLn(p.nombre);
 ReadLn(p.edad);
 ReadLn(p.codg);
End;

Procedure agregarpersona(Var l:lista; p:persona);

Var nuevo:lista;

Begin
 new(nuevo);
 nuevo^.dato := p;
 nuevo^.sig := l;
 l := nuevo;
End;

Procedure cargarpersona(Var l:lista);

Var p:persona;

Begin
 leerpersona(p);
 agregarpersona(l,p);
 While Not(p.dni=33555444) Do
  Begin
   leerpersona(p);
   agregarpersona(l,p);
  End;



End;

Function maspares(cantpares,dni:integer):integer;

Var digito,cantp,cantimp:integer;
Begin
 cantp := 0;
 cantimp := 0;

 While Not(dni=0) Do
  Begin
   digito := dni Mod 10;
   dni := dni Div 10;
   If (digito Mod 2 = 0) Then
    cantp := cantp +1
   Else cantimp := cantimp + 1;
  End;


 If (cantp>cantimp) Then
  maspares := cantpares +1
 Else maspares := cantpares;

End;


Procedure inicializarv ( Var v:codg);

Var i:integer;
Begin
 For i:=1 To 5 Do
  Begin
   v[i] := 0;
  End;


End;

Procedure codsgm (v:vcodg);

Var i,cod1,cod2,cant1,cant2:integer;

Begin
 cod1 := 0;
 cod2 := 0;
 cant1 := 0;
 cant2 := 0;

 For i:=1 To 5 Do
  Begin
   If (v[i]>cant1) Then
    Begin
     cod2 := cod1;
     cant2 := cant1;
     cod1 := i;
     cant1 := v[i];
    End
   Else If (v[i]>cant2) Then
         Begin
          cant2 := v[i];
          cod2 := i;

         End;

   WriteLn('los codg mayores fueron ', cod1 , ' y ',cod2 );
  End;
End;

Procedure eliminar (Var l:lista;dni:integer);

Var ant,act:lista;

Begin

 act := l;

 While Not(actual=Nil) And Not(actual^.dato.dni=dni)  Do
  Begin
   ant := actual;
   actual := actual^.sig;
  End;

 If Not(actual=Nil) Then
  If (actual=l) Then
   l := l^.sig
 Else
  ant^.sig := actual^.sig;

 dispose(actual);


End;


Procedure leerlista(l:lista);

Var cantpares:integer;
 vcod:vcodg;

Begin
 cantpares := 0;
 inicializarv(v);
 While Not(l=Nil) Do
  Begin
   vcod[l^.dato.codg] := vcod[l^.dato.codg]+1;
   cantpares := maspares(cantpares,l^.dato.dni);
  End;
 codsgm(vcod);
 WriteLn(cantpares);
End;


