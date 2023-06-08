
Program carniceria;


Type 

 compra = Record
  monto:real;
  mes:integer;
  ck:real;
  nombre:string;
 End;
 vmeses = array [1..12] Of integer;

 lista = ^nodo;

 nodo = Record
  dato:compra;
  sig:sig;
 End;

Procedure leercompra(Var c:compra);

Begin
 ReadLn(c.monto);
 ReadLn(c.mes);
 ReadLn(c.ck);
 ReadLn(c.nombre);
End;


Procedure insertarordenado( Var l:lista; c:compra;)

Var aux,act,nuevo:lista;

Begin
 new(nuevo);
 nuevo^.dato := c;
 act := l;

 While Not(act=Nil) And (act^.dato.nombre>c.nombre)  Do
  Begin
   ant := act;
   act := act^.sig
  End;

 If (act=l) Then
  l := act
 Else
  ant^.sig := nuevo;
 nuevo^.sig := act;

End;


Procedure agregarlista( Var l:lista);

Var c:compra;
Begin
 l := Nil;
 Repeat
  leercompra(c);
  insertarordenado(l,c);
 Until c.ck=100;
End;

Procedure mesesmenores(v:vmeses);

Var i,mesm1,mesm2:integer;

Begin

 mesm1 := 1;
 mesm2 := 2;


 For i:=1 To 12 Do
  Begin
   If (v[i]>v[mesm1])
    Then
    Begin
     mesm2 := mesm1;
     mesm1 := i;
    End
   Else If (v[i]>v[mesm2]) Then
         mesm2 := i;
  End;

 Writeln(mesm1, 'el otro' , mesm2);
End;


Procedure inicilializarv(v:vmeses);

Var i:integer;
Begin

 For i:=1 To 12 Do
  Begin

   v[i] := 0;


  End;


End;

Procedure septiempre(Var ventas:integer; Var monto:real;c:compra);

Begin
 If (c.mes=9) Then
  Begin
   ventas := ventas +1 ;
   monto := monto + c.monto;
  End;


End;



Procedure leerlista(l:lista);

Var montot:real;
 v:vmeses;
 vnom : integer;
 montonom = real;
 frigoact:string;

Begin
 montonom := 0;
 vnom := 0;
 inicilializarv(V);
 While Not(l=Nil) 
  Do
  Begin
   frigoact := l^.dato.nombre;

   montot := 0;
   While Not(l=Nil) And (frigoact=l^.dato.nombre)  Do
    Begin
     v[l^.dato.mes] := v[l^.dato.mes] +1 ;
     montot := montot + l^.dato.monto;
     septiempre(vnom,montonom,l^.dato);

    End;
   If (montot > 45000) Then
    WriteLn(frigoact);
  End;
 WriteLn(montonom Div vnom);
 mesesmenores(v);

End;
