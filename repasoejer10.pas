
Program repaso;


Type 

 empresa = Record

  cod:Integer;
  nombre:String;
  eop:string;
  //true para privada u false para publica;
  cidudad:String;
  cultivos:cultivos_realizados;
  diml:integer;
 End;

 cultivo = Record
  ctipo:String;
  chectareas:real;
  cmeses:integer;

 End;


 cultivos_realizados = array [1..20] Of cultivo;

 lista = ^nodo;

 nodo = Record

  dato:empresa;
  sig:lista;
 End;



Procedure leerempresa(Var e:empresa);

Begin

 Readln(e.cod);
 If Not(e.cod =-1 )
  Then
  Begin
   Readln(e.nombre);
   Readln(e.eop);
   Readln(e.cidudad);
   leercultivos(e.cultivos,e.diml);
  End;
End;


Procedure leercultivos(Var c:cultivos_realizados; Var diml:integer);

Var i:integer;
Begin
 i := 1;
 leercultivo(c[i]);
 While (diml<21) And Not(c[i-1].chectareas=0)  Do
  Begin
   leercultivos(c[i]);
   i := i +1;
  End;

 diml := i-1;

End;

Procedure leercultivo(Var c:cultivo );

Begin
 ReadLn(c.ctipo);
 ReadLn(c.cmeses);
 ReadLn(c.chectareas);

End;

Procedure agregarenlista(Var l:lista;e :empresa);

Var nuevo:lista;
Begin
 new(nuevo);
 nuevo^.dato := e;
 nuevo^.sig := l;
 l := nuevo;
End;

Procedure cargarempresa(Var l:lista;)

Var e:empresa;

Begin
 leerempresa(e);
 While Not(e.cod=-1)  Do
  Begin
   agregarenlista(l,e);
   leerempresa(e);
  End;

End;

Function cumpleb(e:empresa):boolean;

Begin

 If (e.cidudad='san miguel del monto') Then
  Begin



  End;



End;
Procedure calcularhec(c:cultivo;Var hecsoja,hectotal:real);

Begin
 hectotal := hectotal + c.chectareas;
 If (c.ctipo='soja')Then
  hecsoja := hecsoja + c.chectareas;
End;

Procedure mesmaximoem(Var empresamaiz:String;Var cantiempo:integer;tiempo:interger; empresa:String);

Begin
 If  Then
End;
Procedure recorrerv(e:empresa;Var ctrigo:boolean;Var canthsoja,canhtotal:real;Var empresamaiz:String;Var cantiempo:integer);

Var i:integer;
Begin

 For i:=1 To e.diml Do
  Begin
   If (e.cultivos[i].ctipo='trigo') Then
    ctrigo := true;
   calcularhec(e.cultivos[i],canthsoja,canthsoja);

  End;
 If (e.cultivo[i].ctipo=maiz)Then
  mesmaximoem(empresamaiz,cantiempo,e.cultivo[i].cmeses,e.nombre)

End;

Procedure leerlista(l:lista;)

Var ctrigo:Boolean;
 canthsoja,canhtotal:real;
 empresamaiz:string;
 cantiempo:integer;
Begin
 canthsoja := 0;
 canhtotal := 0;
 empresamaiz := 1;
 While Not(l=Nil) Do
  Begin
   ctrigo:false;
   recorrerv(l^.dato.cultivos,ctrigo,canthsoja,canhtotal,empresamaiz,cantiempo);
   If (cumpleb(l^.dato))
    Then
    WriteLn(l^.dato.nombre);
   l := l^.sig;
  End;

End;
