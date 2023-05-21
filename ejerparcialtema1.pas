
Program  parcial;

Type 
 catl = 1..26;
 cats = Record
  name:string;
  pricek:integer;
 End;
 compras = Record
  dni:integer;
  cat:catl;
  cantk:integer;
 End;

 lista = ^nodo;
 nodo = Record
  dato:compras;
  sig:lista;
 End;


 vcats = array [catl] Of cats;
 montos = array [catl] Of integer;

Procedure inicializararraymontos(v:montos);

Var i :integer;
Begin
 For i:=1 To 26 Do
  Begin
   v[i] := 0;
  End
End;



Procedure leerproducto(Var cate:cats; Var c:catl);

Begin
 ReadLn(c);
 ReadLn(cate.name);
 ReadLn(cate.pricek);

End;

Procedure cargarproductos(Var v:vcats);

Var i = catl;
 cate:cats;
 c:catl;
Begin
 For i:=1 To 26 Do
  Begin
   leerproducto(cate,c);
   v[c] := cate;
  End;
End;

Procedure esmayor(Var dnim,cantcomprasm:integer;dniact,cantcompras:integer;);

Var 
Begin
 If (cantcomprasm<cantcompras) Then
  Begin
   dnim := dniact;
   cantcomprasm := cantcomprasm
  End;
End;


Procedure recorrerlista(l:lista; Var v:montos; vp:vcats;Var dniM:integer);

Var aux:lista;
 dniactual,dnim,cantcompras,cantcomprasm:integer;

Begin
 cantcomprasm := 0;
 While Not(l=Nil)  Do
  Begin
   cantcompras := 0;
   dniactual := l^.dato.dni;
   While (dniactual=l^.dato.dni) And Not(l=Nil) Do
    Begin
     cantcompras := cantcompras +1;
     v[v[l^.dato.cat]] := v[v[l^.dato.cat]]+(vp[l^.dato.cat].pricek*l^.dato.cantk);
     l := l^.sig;

    End;
   esmayor(dnim,cantcomprasm,dniactual,cantcompras);

  End;

End;


Var lista:lista;
 arraymontos:montos;
 arraycats;
 dnim:integer;


Begin
 lista := Nil;
 inicializararraymontos(arraymontos);
 cargarproductos(arraycats);

 recorrerlista(lista,arraymontos,arraycats,dnim)




End.
