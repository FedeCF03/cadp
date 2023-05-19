
Program p5pe5;

Type 
 cats = (radio,microondas,infrarrojo,luzv,ultravioleta,rayosx,rayosg);
 espectros = array [cats] Of integer;
 srt = string[20];
 sondas = Record
  name:srt;
  duracion:integer;
  costoc:real; // costo construcción 
  costom:real; //costo mensual 
  rango:cats;
 End;

 lista = ^nodo;
 nodo = Record
  dato:sondas;
  sig:lista;

 End;

 listS = ^nodo;
 nodo = Record
  name:srt;
  sig:listS;

 End;


Procedure leersondas(l:sondas);
Begin
 If Not(name='GAIA') Then
  Begin
   ReadLn(l.duracion);
   ReadLn(l.costoc);
   ReadLn(l.costom);
   ReadLn(l.rango);

  End;
End;



Procedure agregarLists(Var l:listS;name:str);

Var nuevo:listS;
Begin
 new(nuevo);
 nuevo^.name := name;
 nuevo^.sig := l;
 l := nuevo;
End;


Procedure agregarLista(Var l:lista;s:sondas);

Var nuevo:lista;
Begin
 new(nuevo);
 nuevo^.dato := s;
 nuevo^.sig := l;
 l := nuevo;
End;

Procedure cargarlista(Var l:lista);

Var s:sondas;
Begin
 leersondas(s);
 While Not(s.name='GAIA') Do
  Begin
   agregarLista(l,s);
   leersondas(s);
  End;
End;

Procedure mascara(Var nsmascara:srt; Var costoc,costom:real;dato:sondas);  // construcción más cara


Begin
 If ((costoc<dato.costoc) Or (costom<dato.costom))Then
  Begin
   nsmascara := dato.name;
   costoc := dato.costoc;
   costom := dato.costom;
  End;

End;

Procedure inicializararray(Var v:espectros);

Var i :cats;

Begin
 For i:=radio To rayosg Do
  Begin
   v[i] := 0;
  End;
End;


Procedure cantsondas(Var v:espectros; rango:cats);

Begin
 v[rango] := v[rango]+1;
End;

Procedure puntocyd(l:lista;promediod:integer;promedioc:real);

Var cantsondas:integer;
 l:lista;
 ls:listS;
Begin
 cantsondas := 0;
 secun := l;
 While Not(secun^.sig=Nil) Do
  Begin
   secun := l;
   cantsondas := destimadas(cantsondas,secun^.dato);
   secun := secun^.sig;
  End;


End;

Procedure recorrerLista(l:lista;var promedioc: real;promedios:integer;);

Var 
 secun:lista;
 nsmascara:srt;
 costoc,costom:real;

Begin
 secun := l;
 nsmascara := 0;
 costoc := 0;
 costom := 0;
 While Not(secun^.sig=Nil) Do
  Begin
   mascara(nsmascara,costoc,costom,secun^.dato);
   cantsondas(v,secun^.dato.rango);
   secun := secun^.sig;
  End;

End;
