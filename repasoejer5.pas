
Program repaso;

Type 

 camion = Record
  patente:string;
  ano:integer;
  capa:reaL;
 End;

 viaje = Record
  cod:integer;
  codcamion:integer;
  km:real;
  ciudadd:string;
  anov:integer;
  dni:integer;
 End;

 camiones = array[1..100] Of camion;
 kmreco = array[1..100] Of real;
 //kilometros recorridos totales de cada camion;
 lista = ^nodo;
 nodo = Record

  dato:viaje;
  sig:lista;
 End;

Procedure leerviaje(Var v:viaje);

Begin
 ReadLn(v.cod);
 If Not(v.cod=-1) Then
  Begin
   ReadLn(v.codcamion);
   ReadLn(v.km);
   ReadLn(v.ciudadd);
   ReadLn(v.anov);
   ReadLn(v.dni);
  End;


End;

Procedure agregarlista(Var l:lista;v:viaje);

Var nuevo:lista;

Begin

 new(nuevo);
 nuevo^.dato := v;
 nuevo^.sig := l;
 l := nuevo;
End;

Procedure cargarlista(Var l:lista);

Var v:viaje;

Begin
 leerviaje(v);
 While Not(v.cod=-1) Do
  Begin
   agregarlista(l,v);
   leerviaje(v);
  End;
End;

Procedure vinicializar(Var v:kmreco);

Var i :integer;
Begin

 For i:=1 To 100 Do
  Begin

   v[i] := 0;

  End;

End;

Procedure maximoyminimo(v:kmreco;c:camiones);

Var patentemax,patentemin:string;
 i,kmmax,kmmin:real;

Begin

 kmmax := 0;
 kmmin := 99999;

 For i:=1 To 100 Do
  Begin
   If (v[i]>kmmax) Then
    Begin
     patentemax := c[i].patente;
     kmmax := v[i];
    End;

   If (kmmin>v[i]) Then
    Begin
     patentemin := c[i].patente;
     kmmin := v[i];
    End;


  End;



 Writeln(patentemax,'    ', patentemin);

End;


Function puntob(v:viaje;c:camion;cantv:integer):integer;

Begin

 If ((c.capa>30,5) And (v.anov-c.ano>5)) Then
  puntob := cantv+1
 Else
  puntob := cantv;

End;


Procedure dnimpar( v:viaje);

Var digito:integer;
 cumple:Boolean;
Begin
 cumple := true;
 While Not(v.dni=0) And (cumple=true) Do

  Begin
   digito := v.dni Mod 10 ;
   dni := v.dni Div 10;

   If (digito Mod 2 = 0) Then
    cumple := False;

  End;

 If (cumple) Then
  WriteLn(v.cod);

End;


Procedure leerviajes(l:lista; vc:camiones);

Var vkm:kmreco;
 cantviajes:integer;

Begin
 cantviajes := 0;
 vinicializar(vkm);
 While Not(l=Nil) Do
  Begin

   vkm[l^.dato.codcamion] := vkm[l^.dato.codcamion]+ l^.dato.km;
   cantviajes := puntob(l^.dato,vc[l^.dato.codcamion],cantviajes);
   dnimpar(l^.dato);
   l := l^.sig;
  End;

 maximoyminimo(vkm,vc);
 WriteLn(cantviajes);
End;
