
Program repaso;

Type 
 rango = [1..7];
 obj = Record
  codobj:integer;
  cobj:rango;
  nobj:string;
  distancia:integer;
  descubridor:string;
  anodes:integer;
 End;

 cantobj = array[rango] Of integer;

 lista = ^nodo;

 nodo = Record
  dato:obj;
  sig:lista;
 End;

Procedure leerobj( Var o :obj);

Begin

 ReadLn(o.codobj);
 If Not(o.codobj=-1)Then
  Begin
   ReadLn(o.cobj);
   ReadLn(o.nobj);
   ReadLn(o.distancia);
   ReadLn(o.descubridor);
   ReadLn(o.anodes);

  End;
End;

Procedure inicializarv ( Var v:cantobj) ;

Var i:integer;

Begin

 For i:=1 To 7 Do
  Begin
   v[i] := 0;
  End;
End;


Procedure agregaratras (Var l,ult:lista;o:obj);

Var nuevo:lista;
Begin
 new(nuevo);
 nuevo^.dato := o;
 nuevo^.sig := Nil;
 If (l=Nil) Then
  L := nuevo
 Else
  Begin
   ult^.sig := nuevo;
   ult := nuevo;
  End;
End;


Procedure cargarobj(Var l:lista);

Var o:obj;
 ult:lista;
Begin
 leerobj(o);

 While Not(o.codobj=-1) Do
  Begin

   agregaratras(l,ult,o);
   leerobj(o);
  End;
End;

Procedure maximo(Var cod1,cod2,d1,d2:integer;codobj,distancia:integer;);

Begin

 If (distancia>d1) Then
  Begin
   cod2 := cod1;
   d2 := d1;
   cod1 := codobj;
   d1 := distancia
  End
 Else If (distancia>d2) Then
       Begin
        d2 := distancia;
        cod2 := codobj;
       End;


End;
Function galileodes(o:obj;cantdes:integer):integer;

Begin
 If ( (o.descubridor='galileo galilei') And (1600>o.anodes))
  Then
  galileodes := cantdes +1
 Else
  galileodes := cantdes;
End;


Procedure maspar(o:obj);

Var par,impar,digito:integer;

Begin
 par := 0;
 impar := 0;
 While Not(o.codobj=0) Do
  Begin
   digito := o.codobj Mod 10;
   o.codobj := o.codobj Div 10 ;

   If (digito Mod 2 =0 )
    Then
    par := par +1
   Else impar := impar +1;
  End;

 WriteLn(o.nobj);

End;

Procedure informarv(v:cantobj);

Var i:integer;

Begin
 For i:=1 To 7 Do
  Begin
   writeln('cat 1 ',v[i]);
  End;



End;



Procedure leerlista(l:lista);

Var cod1,cod2,d1,d2,descubridogalileo:integer;
 vcats:cantobj;
Begin

 cod1 := 0;
 cod2 := 0;
 d1 := 0;
 d2 := 0;
 descubridogalileo := 0;
 inicializarv(vcats);
 While Not(l=Nil) Do
  Begin
   maximo(cod1, cod2, d1, d2,l^.dato.codobj,l^.dato.distancia);
   descubridogalileo := galileodes(l^.dato,descubridogalileo);
   vcats[l^.dato.cobj] := vcats[l^.dato.cobj] + 1;
   maspar(l^.dato);



  End;

 Write(descubridogalileo);
End;
