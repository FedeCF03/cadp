
Program parcial;

Const 

 cat = 20;

Type 
 rango_cat = [1..cat];
 compra = Record
  dni:integer;
  categoria:rango_cat;
  ckilos:real;
 End;
 producto = Record
  nombre:string;
  pkilo:real;
 End;
 vcats = array [rango_cat] Of producto;
 // se dispone de este array por ende no debo cargarlo
 vcatsint = array [rango_cat] Of integer;

 lcompras = ^nodo;

 nodo = Record
  dato:compra;
  sig:lcompras;
 End;

Procedure leercompra(c:compra);

Begin
 ReadLn(c.dni);
 If Not(c.dni=-1) Then
  Begin
   ReadLn(c.categoria);
   ReadLn(c.ckilos);

  End;

End;

Procedure insertarordenadodni( Var l:lcompras; c:compra);

Var ant,act,nuevo:lcompras;

Begin
 new(nuevo);
 nuevo^.dato := c;
 act := c;
 While Not(act=Nil) And (act^.dato.dni>c.dni) Do
  Begin
   ant := act;
   act := act^.sig;
  End;

 If (act=l)Then
  l := nuevo
 Else
  ant^.sig := nuevo;
 nuevo^.sig := act;
End;

Procedure inicializarv( Var v: vcatsint);

Var i:integer;
Begin

 For i:=1 To cat 
  Do
  Begin
   v[i] := 0;
  End;
End;

Procedure agregarlista(Var l:lcompras);

Var c:compra;

Begin
 l := Nil;
 leercompra(c);
 While Not(c.dni=-1) Do

  Begin
   insertarordenadodni(l,c);
   leercompra(c);

  End;

End;
Procedure calcularpobre(Var dnip:integer; Var montominimo:real; monto:real;dniactual:integer)

Begin
 If (montominimo>monto) Then
  Begin
   dnip := dniactual;
   montominimo := monto;
  End;


End;

Procedure dnipar (Var cdni:integer; dni:integer);

Var dimpar,digito:integer;
Begin
 dimpar := 0;
 While Not(dni=0) And (dimpar<=5) Do
  Begin
   digito := dni Mod 10 ;
   dni := dni Div 10;
   If (digito Mod 2 = 1) Then
    dimpar := dimpar+1;


  End;

 If (5<=dimpar)Then
  cdni := cdni+1;

End;



Procedure recorrerlista(l:lcompras;Var dnip:integer; Var v:vcatsint; vcat:vcats; Var ccdni:integer);

Var montominimo,monto:real;
 dniactual:integer;

Begin
 montominimo := 99999;
 While Not(l=Nil) Do
  Begin
   monto := 0;
   dniactual := l^.dato.dni;
   While (dniactual=l^.dato.dni) Do
    Begin
     monto := monto + (l^.dato.ckilos*vcat[l^.dato.categoria].pkilo);
     v[l^.dato.categoria] := v[l^.dato.categoria]+1;

     l := l^.sig;
    End;
   dnipar(ccdni,dniactual);
   calcularpobre(dnip,montominimo,monto,dniactual)

  End;


End;


Var l:lcompras;
 dnip,ccdni:integer;
 v:vcatsint;
 vcat:vcats;

Begin
 dnip := 0;
 ccdni := 0;

 cargarcategorias(vcat);
 //se dispone
 inicializarv(v);
 agregarlista(l);
 recorrerlista(l,dnip,v,vcat,ccdni);



End.
