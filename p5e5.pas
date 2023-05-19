
Program ejer5;

Type 
 str = string[20];
 productos = Record
  codigo: integer;
  desc: str;
  stock_actual: integer;
  stock_minimo: integer;
  precio: real;
 End;
 lista = ^nodo;
 nodo = Record
  dato : productos;
  sig : lista;
 End;

Procedure leerproducto (Var p:productos);
Begin
 writeln ('Ingrese codigo');
 readln(p.codigo);
 If (p.codigo<>-1) Then
  Begin
   writeln ('Ingrese descripcion');
   readln(p.descripcion);
   writeln ('Ingrese stock actual');
   readln(p.stock_actual);
   writeln ('Ingrese stock minimo');
   readln(p.stock_minimo);
   writeln ('Ingrese precio');
   readln(p.precio);
  End;
End;

Procedure agregar(Var L:lista; p: productos);

Var 
 nuevo : lista;
Begin
 new(nuevo);
 nuevo^.dato := p;
 nuevo^.sig := L;
 L := nuevo;
End;

Procedure cargarlista (Var L:lista);

Var p:productos;

Begin

 leerproducto(p);
 While (p.codigo<>-1) Do
  Begin
   agregar(l,p);
   leerproducto(p);
  End


End;

Procedure espar(codigo:integer;desc:srt);

Var digito,par:integer;
Begin

 While Not(codigo=0) Do
  Begin
   digito := codigo Mod 10;
   codigo := codigo Div 10;

   If (digito Mod 2= 0)Then

    par := par +1;

  End;
 If (3< par)Then WriteLn(desc);

End;
Procedure masbarato(Var codeco1,codeeco2:integer;cod:integer;Var precio1,precio2:real;precio:real;);
Begin

 If (precio<precio1) Then
  Begin
   precio2 := precio1;
   codeeco2 := codeco1;
   codeco1 := codeco;
   precio1 := precio;

   Else If (precio<precio2)Then

         precio2 := precio;
   codeeco2 := codeco;

  End;



End;
Procedure recorrerLista(l:lista;Var totalp,totalminimo:integer;codeco1,codeco2:real);

Var 
 secun:lista;
 precio1,precio2:real;
Begin
 secun := l;
 While (secun^.sig <> Nil) Do
  Begin
   Write(secun^.dato);
   If (secun^.dato.stock_actual<secun^.dato.stock_actual)Then totalminimo := totalminimo+1;
   totalp := totalp+1;
   espar(secun^.dato.codigo,secun^.dato.desc);
   secun := secun^.sig;

  End;
End;

Var l:lista;
 totalp,totalminimo:integer;
 codeco1,codeeco2:real;

Begin
 l := Nil;
 cargarlista(l);

 recorrerLista(l,totalp,totalminimo,codeco1,codeco2);

End.
