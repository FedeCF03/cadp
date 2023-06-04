
Program parcial;

Const 
 codm = 200;
 pmax = 6;

Type 

 rango_mod = [1..codm];
 rango_pago = [1..pmax];
 venta = Record
  cod:rango_mod;
  marca:string;
  codcliente:integer;
  pago:rango_pago;
 End;

 tabla_venta = array[rango_mod] Of real;
 v_pagos = array[rango_pago] Of real;

 lventa = ^nodo;

 nodo = Record
  dato:venta;
  sig:lventa;
 End;

Procedure leerventa(Var v:venta);

Begin
 ReadLn(v.cod);
 If Not(v.cod=-1)Then
  Begin
   ReadLn(v.marca);
   ReadLn(v.codcliente);
   ReadLn(v.pago);

  End;
End;

Procedure agregarenlita(Var l,ult:lventa; v:venta);

Var nuevo:lventa;
Begin
 New(nuevo);
 nuevo^.dato := v;
 nuevo^.sig := Nil;

 If (l=Nil)Then
  l := nuevo
 Else
  Begin
   ult^.sig := nuevo;
   ult := nuevo;
  End;
End;


Procedure agregaratras(Var l:lventa);

Var v:venta;
 ult:lventa;

Begin
 leerventa(v);
 While Not(v.cod=-1) Do
  Begin
   agregarenlita(l,ult,v);
   leerventa(v);
  End;

End;


Procedure inicializarv(Var v:v_pagos);

Var i:integer;
Begin

 For i:=1 To pmax Do
  Begin
   v[i] := 0;
  End;

End;


Function cumplepar (cod:integer):Boolean;

Begin
 cumplepar := (cod  Mod 10) Mod 2 = 0;

End;
Procedure maximaventa(v:v_pagos; Var p1,p2:rango_pago);

Var i:integer;
Begin

 For i:=1 To pmax Do
  Begin
   If (v[i]>v[pago1]) Then
    Begin
     pago2 := pago1;
     pago1 := i;
    End
   Else If (v[i]>v[pago2]) Then
         pago2 := i;

  End;

End;
Procedure leerventas(l:lventas;Var pago1,pago2:rango_pago; Var clientespar:integer;precios:tabla_venta);

Var v:v_pagos;
Begin
 inicializarv(v);
 pago1 := 0;
 pago2 := 0;
 While Not(l=Nil) Do
  Begin
   venta:l^.dato;

   If ((venta.marca='lenovo') And (cumplepar(venta.codcliente)))
    Then
    clientespar := clientespar +1 ;
   v[venta.pago] := v[venta.pago] + pago[v.cod];
   l := l^.sig;
  End;
 maximaventa(v,pago1,pago2);

End;

Var l:lventa;
 pago1,pago2:rango_pago;
 clientespar:integer;
 precios:tabla_venta;

Begin
 l := Nil;
 clientespar := 0;
 agregaratras(l);
 cargarvprecios(precios);
 //se dispone
 leerventas(l,pago1,pago2,clientespar,precios);
 //


 WriteLn('los medios de pago con mas monto fueron :', pago1,' y ', pago2);
 WriteLn('clientes par y que comprar lenovo ', clientespar);




End.
