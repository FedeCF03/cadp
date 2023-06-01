
Program repaso;


Type 
 codprovincia = [1..23];

 provinciasm = Record
  prov1:integer;
  prov2:integer;
  cabprov1:integer;
  cabprov2:integer;
 End;

 entancia = Record

  cod:integer;
  localidad : string;
  codpro:codprovincia;
  cabezas:integer;
 End;

 lista = ^nodo;

 nodo = Record

  dato:estancia;
  sig:lista;

 End;

Procedure leerestancia(e:estancia);

Begin
 ReadLn(e.cod);

 If Not(e.cod=0)Then
  Begin

   ReadLn(e.localidad);
   ReadLn(e.codpro);
   ReadLn(e.cabezas);

  End;
End;


Procedure insertarenlista(Var l : lista ; e:estancia);

Var 
 nuevo,ant,act:lista;

Begin

 new(nuevo);
 nuevo^.dato := e;
 act := l;
 ant := l;

 While Not(act=Nil) And (c.cod>act^.dato) Do
  Begin
   ant := act;
   act := act^.sig;
  End;

 If (ant=act)Then
  l := nuevo
 Else
  Begin
   ant^.sig := nuevo;
   nuevo^.sig := act;
  End;
End;


Procedure agregaralista (Var l:lista);

Var e:estancia;
Begin
 leerestancia(e);

 While Not(e.cod=0) Do
  Begin
   insertarenlista(l,e);
   leerestancia(e);
  End;


End;

Function estaenlista(l:lista;cod:integer;):boolean;

Var cumple : boolean;
Begin

 cumple := false;

 While Not(l=Nil) And (cumple=false) Do
  Begin

   If (l^.dato.cod=cod) Then cumple = true;

   l := l^.sig;
  End;

 estaenlista := cumple;

End;

Procedure maximos (Var p:provinciasm; cod,cabezas:integer);
Begin

 If ( p.cabprov1<cabezas)
  Then
  Begin
   p.prov2 := p.prov1;
   p.cabprov1 := p.cabprov1;
   p.prov1 := cod;
   p.cabprov1 := cabezas;

  End
 Else If (p.cabprov2<cabezas) Then
       Begin
        p.prov2 := cod;
        p.cabprov2 := cabezas;
       End;

End;


Procedure recorrerlista(l:lista;Var pmayor:provinciasm);


Begin

 While Not(l=Nil) Do
  Begin

   maximos(pmayor,l^.dato.cod,l^.dato.cabezas);

  End;


End;


Var 
 provinm:provinciasm;
 l:lista;

Begin
 l := Nil;
 provinm.prov1 := 0;
 provinm.prov2 := 0;
 provinm.cabprov1 := 0;
 provinm.cabprov1 := 0;
 agregaralista(l);
 If (estaenlista(l,234)) Then
  WriteLn(' la estancia 234 esta almacenada');
 recorrerlista(l,provinm)



End.
