
{Implementar un programa que lea y almacene información de clientes de una empresa aseguradora
automotriz. De cada cliente se lee: código de cliente, DNI, apellido, nombre, código de póliza contratada
 (1..6) y monto básico que abona mensualmente. La lectura finaliza cuando llega el cliente con código
 1122, el cual debe procesarse.
 La empresa dispone de una tabla donde guarda un valor que representa un monto adicional que el
 cliente debe abonar en la liquidación mensual de su seguro, de acuerdo al código de póliza que tiene contratada.
Una vez finalizada la lectura de todos los clientes, se pide:
a. Informar para cada cliente DNI, apellido, nombre y el monto completo que paga mensualmente
 por su seguro automotriz (monto básico + monto adicional).
b. Informar apellido y nombre de aquellos clientes cuyo DNI contiene al menos dos dígitos 9.
 c. Realizar un módulo que reciba un código de cliente, lo busque (seguro existe) y lo elimine de la
  estructura.}

Program repaso;

Type 
 rango_poliza = [1..6];

 cliente = Record
  codcliente:integer;
  dni:integer;
  apellido:string;
  nombre:string;
  codp:rango_poliza;
  montob:real;
 End;

 lista = ^nodo;

 nodo = Record

  dato:cliente;
  sig:lista;
 End;
 vmontoadd = array[rango_poliza] Of real;


Procedure leercliente(Var c:cliente);

Begin
 ReadLn(c.codcliente);
 ReadLn(c.dni);
 ReadLn(c.apellido);
 ReadLn(c.nombre);
 ReadLn(c.codp);
 ReadLn(c.montob);
End;

Procedure cargarcliente(Var L:lista; c:cliente);

Var nuevo:lista;

Begin

 new(nuevo);
 nuevo^.dato := c;
 nuevo^.sig := l;
 l := nuevo;
End;

Procedure agregarcliente(Var l:lista);

Var c:cliente;
Begin
 leercliente(c);
 cargarcliente(l,c);

 While Not(c.codcliente=1122) Do
  Begin
   leercliente(c);
   cargarcliente(l,c);
  End;
End;

Procedure informar(c:cliente; v:vmontoadd);

Begin
 WriteLn(c.codcliente);
 WriteLn(c.apellido);
 WriteLn(c.nombre);
 WriteLn('monto completo', c.montob+v[c.codp]);
End;

Procedure informarb (c:cliente);

Var digito,cant9:integer;

Begin
 cant9 := 0;
 While Not(c.dni=0) Do
  Begin
   digito := dni Mod 10 ;
   c.dni := c.dni Div 10;

   If (digito=9) Then cant9 := cant9+1;
  End;

 If (cant9>=2) Then
  Begin
   WriteLn(c.apellido);
   WriteLn(c.nombre);
  End;
End;

Procedure recorrerlista( l:lista;v:vmontoadd);

Begin

 While Not(l=Nil) Do
  Begin

   informar(l^.dato,v);
   informarb(l^.dato);
   l := l^.sig;
  End;



End;




Procedure eliminar(Var l:lista; cod:integer;)

Var 
 ant,act:lista;

Begin

 act := l;

 While Not(act^.dato.codcliente=cod) Do
  Begin

   ant := act;
   act := act^.sig;
  End;

 If (act=l)
  Then
  l := l^.sig
 Else
  ant := act^.sig;
 dispose(act)
End;




Var vmontoad:vmontoadd;
 l:lista;


Begin
 l := Nil;
 cargarmonto(vmontoad);
 //se dispone
 agregarcliente(l);
 recorrerlista(l,vmontoad);
 //eliminar()
End.
