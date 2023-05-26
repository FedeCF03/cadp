
Program p6e13;

Type 
 roles = ('editor','autor','revisor','lector');
 usuario = Record
  rol:roles;
  revista:string;
  cantd:integer;
 End;

 usuarios = array[1..3600] Of usuario;

 lista = ^nodo;

 nodo = Record
  dato:usuario;
  sig:lista;
 End;

Procedure agregarlista(Var l:lista; u:usuario;)

Var nuevo,ant,act:lista;

Begin
 new(nuevo);
 nuevo^.dato := u;
 act := l;
 ant := l;

 While Not(act=Nil) And (u.cantd>act^.dato.cantd)  Do
  Begin
   ant := act;
   act := act^.sig;
  End;

 If (act=ant)Then
  l := nuevo

 Else
  ant^.sig := nuevo;
 nuevo^.sig := act;
End;

Function cumpleeco(u:usuario):Boolean;
Begin

 If (u.revista=economia) Then
  cumpleeco := true
 Else
  cumpleeco := false;

End;

Procedure cargarlista(Var l:lista; v:usuarios);

Var i:integer;
Begin
 For i:=1 To 3600 Do
  Begin
   If (cumpleeco(v[i])) Then
    Begin
     agregarlista(l,v[i]);
    End;
  End;
End;
