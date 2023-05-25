//Un supermercado necesita analizar la información de las compras realizadas en el último año para
//reposición de stock.
//a) Realizar un módulo que cargue en una estructura de datos adecuada la información de las
//compras. De cada compra se conoce el monto abonado, el mes en que se realizó la compra, la
//cantidad de productos comprados y el nombre del proveedor. Por cada proveedor puede haber más
//de una compra. La información de las compras debe quedar ordenada por nombre de proveedor. La
//lectura finaliza al ingresar la compra con monto -1 que no debe procesarse.
//b) Realizar un programa que utilice la información generada en el inciso a) e informe:
//   i) Los nombres de los proveedores para los cuales el monto total facturado superó los 30.000
//  pesos.
//Los dos meses en los que se realizaron mayor cantidad de compras.

////  iii) El monto promedio de las compras realizadas durante el mes de julio


Program ejer;

Type 
 meses = 1..12;
 str = string[20];
 compra = Record
  name:str;
  monto:real;
  mes:meses;
  cantp:integer;
 End;

 vprov = array[1..12] Of integer;

 lista = ^nodo;
 nodo = Record
  dato:comprar;
  sig:lista;
 End;


Procedure cargarv(Var v:vprov);

Var i := integer;

Begin

 For i:=1 To 12 Do
  Begin

   v[i] := 0;
  End;


 Procedure leercompra(Var c:compra);

 Begin
  ReadLn(c.monto);
  If Not(c.monto=-1) Then
   Begin
    ReadLn(c.name);
    ReadLn(c.mes);
    ReadLn(c.cantp);
   End;
 End;

 Procedure insertarOrdenado(Var L:lista; c:compra);

 Var 
  nue: lista;
  act, ant: lista;
 Begin
  new (nue);
  nue^.dato := j;
  act := L;
  ant := L;
  While ( act <> Nil)And(j.name > act^.dato.name) Do
   Begin
    ant := act;
    act := act^.sig;
   End;
  If (act = ant) Then
   L := nue;
  Else
   ant^.sig := nue;
  nue^.sig := act;
 End;
 Procedure cargarmeses(i:integer; Var v:vprov);
 Begin

  v[i] := v[i]+1

 End

 Procedure sup30( monto:real; name:str);

 Begin
  If (monto>30000) Then write(name):
 End;


 Function julio(m: meses; monto : real;total:real):integer;

 Begin
  If (m = 7) Then
   julio := monto+total;
 End;


 Procedure cargarlist( Var l:lista;Var vproveedores:vprov)
 Begin
  leercompra(c);
  l:nil;

  While Not(c.monto=-1) Do
   Begin
    sup30(l^.dato.monto,l^.dato.name);
    cargarmeses(l^.dato.mes,vproveedores)
    insertarOrdenado(l,c);

    leercompra(c);
   End;

 End;

 Procedure mesesconmascompras(v:vprov);

 Var mes1,mes2:meses;
  i,cantm1,cantm2:integer;
 Begin
  cantm1 := 0;
  cantm2 := 0;
  mes1 := 0;
  For i:=1 To 12 Do
   Begin
    If ( v[i]>cantm1) Then
     Begin

      mes1 := i;
      cantm1 := v[i];
     End
    Else If ( v[i]>cantm2) Then
          Begin

           mes2 := i;
           cantm2 := v[i];

          End
          writeln(mes1);
    writeln(mes2);
   End

   Procedure dosytres(l:lista;v:vprov; Var montojulio:real);

  Begin

   While Not(l=Nil) Do
    Begin
     mesesconmascompras(v);
     montojulio := julio (l^.dato.mes,l^.dato.monto, montojulio)
                   l:=l^.sig;
    End;

   Function calcularpromedio(suma: real;julios:integer): real;
   Begin
    calcularpromedio := suma / julios;


    Var l:lista;
     v : vproveedores;
     prom, montojulio : real;
    Begin
     cargarlist (l,v)
     dosytres (l, v, montojulio)
     writeln ('EL promedio de monto en el mes de julio es ', calcularpromedio (montojulio,v[7]));

    End.
