
Program preaso;

Const 
 max_cod = 650;
 max_cats = 5;

Type 
 rango_cod = [1..max_cod];
 categorias = [1..max_cats];
 venta = Record
  dcod:rango_cod;
  cant:integer;
  dni:integer;
 End;
 disposito = Record
  cat:categorias;
  cantgb:integer;
  marca:string;
  precio:real;
  codigo:rango_cod
 End;

 dispositos = array[rango_cod] Of disposito;
 cats = array[categorias] Of integer;
 lista = ^nodo;

 nodo = Record
  dato:venta;
  sig:lista;
 End;


Procedure leerventa(Var v:venta);

Begin
 ReadLn(v.dcod);
 ReadLn(v.cant);
 ReadLn(v.dni);
End;

Procedure agregarventas (Var l:lista ; v : venta);

Var nuevo:lista;

Begin
 New(nuevo);
 nuevo^.dato := v;
 nuevo^.sig := l;
 l := nuevo;
End;


Procedure cargarventas(Var l:lista);

Var v_venta;

Begin

 Repeat
  leerventa(v);
  agregarventas(l,v);
 Until v.dni = -1 ;

End;
Procedure leerventas (l:lista; v:dispositos; Var dinerot :real; Var catmasv:String);

Var 
 vcat:cats;


Begin


 While Not(l=Nil) Do
  Begin
   If (sangiskv(l^.dato,v))Then
    dinerot := dinerot + (v[l^.dato.dcod]*l^.dato.cant);



  End;










End;
