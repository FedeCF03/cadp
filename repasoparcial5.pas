
Program repaso5;


Type 
 meses = [1..12];
 compra = Record

  name:string;
  monto:real;
  mes:meses;
  ckilos:real;
 End;

 mesesmenorcompra = Record
  cantc1:Integer;
  cantc2:Integer;
  mes1:integer;
  mes2:integer;
 End;


 lista = ^nodo;

 nodo = Record

  dato:compra;
  sig:lista;
 End;
 vmeses = array[meses] Of Integer;
Procedure leercompra(c:compra);
Begin

 ReadLn(c.name);
 ReadLn(c.monto);
 ReadLn(c.mes);
 ReadLn(c.ckilos);
End;

Procedure promediosep(cantidad:integer;monto:real);

Begin

 WriteLn(monto/cantidad);

End;


Procedure agregarlista(Var l:lista; c:compra);

Var nuevo,act,ant:lista ;

Begin

 New(nuevo);
 nuevo^.dato := c;
 act := l;
 ant := l;
 While Not(act=Nil) And Not(act^.dato.name>c.name) Do
  Begin
   ant:act;
   act := act^.sig;
  End;

 If (act=ant) Then
  l := nuevo
 Else
  Begin
   ant^.sig = nuevo;
   nue^.sig := act;
  End;
End;


Procedure insertlista (Var l:lista);

Var c:compra;
Begin
 leercompra(c);
 agregarlista(l,c);

 While Not(c.ckilos=100) Do
  Begin
   leercompra(l,c);
   agregarlista(l,c);

  End;
End;

Procedure inicializarv(Var vcmeses:vmeses);

Var i:integer;
Begin
 For i:=1 To 12 Do
  Begin
   vcmeses[i] := 0;
  End;
End;


Procedure cumplemonto(montof:real;name:String);

Begin

 If (montof>45000) Then
  Begin
   WriteLn(name);
  End;



End;



Procedure mesesmc(v:vmeses;Var c :mesesmenorcompra)

Begin
 For i:=1 To 12 Do
  Begin

   If (cantc1>v[i])Then
    Begin
     c.cantc2 := c.cantc1;
     c.mes2 := c.mes1;
     c.cantc1 := v[i];
     c.mes1 := i;
    End
   Else If (cantc2>v[i]) Then
         Begin
          c.cantc2 := v[i];
          c.mes2 := i;

         End;

  End;
End;
Procedure leerlista (l:lista;Var mesesmenores:mesesmenorcompra);

Var frigoact : String;
 mes1,mes2:integer;
 montops,montof:real;
 vcmeses:vmeses;
Begin
 inicializarv(vcmeses,mes1,mes2);
 montops := 0;
 While Not(l=Nil) Do
  Begin
   montof := 0;
   frigoact := l^.dato.name;

   While (frigoact=l^.dato.name) Do
    Begin
     montof := montof+l^.dato.monto;
     vcmeses[l^.dato.mes] := vcmeses[l^.dato.mes]+1;
     If (l^.dato.mes=8) Then
      Begin
       montops := montops+l^.dato.monto;
      End;

     cumplemonto(montof,frigoact);

    End;
   mesesmc(vcmeses,mesesmenores);
   promediosep(vcmeses[8],montops);
  End;
