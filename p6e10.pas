
Program p6e10;


Type 
 ndni := integer[10];
 cliente: Record
  dni:ndni;
  numero:integer;

 End;
 lista:^nodo;

 nodo = Record
  dato:cliente;
  sig:lista;
 End;


Procedure RecibirCliente(Var pri,ult:lista; Var n:=integer;dni:integer;);

Var 
 nuevo:lista;
Begin
 new(nuevo);

 nuevo^.dato.dni := dni;
 nuevo^.dato.numero := n+1;
 nuevo^.sig := Nil;
 If (pri=Nil)Then
  Begin
   pri := nuevo;
   ult := nuevo;
  End
 Else
  Begin
   ult^.sig := nuevo;
   ult := nuevo;

  End;
End;
End;

Procedure leercliente(Var c:cliente;Var n:integer);

Begin
 ReadLn(c.dni);
 If Not(dni=0) Then
  Begin
   c.numero := n+1;
   n := n+1;
  End;


End;

Procedure agregarcliente(Var pri,ult:lista);

Var i,n:integer;
 c:cliente;

Begin
 n := 0;
 leercliente(c,n);

 While Not(dni=0) Do
  Begin
   recibircliente(pri,ult,n,c.dni);
   leercliente(c,n);

  End;




End;

Procedure AtenderCliente (Var pri:lista;)

Var act:lista;
Begin

 actual := pri;
 pri := pri^.sig;
 Dispose(actual);
End;

Var n:integer;
 pri,ult:lista;



Begin
 n := 1;

 agregarcliente(pri,ult);

 While Not(pri=Nil) Do
  Begin

   AtenderCliente(pri);

  End;
 Dispose(pri)



End.
