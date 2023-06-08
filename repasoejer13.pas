
Program ejer13;

Const max_areas = 35;

Type 

 rango_area = [1..35];
 cadena20 = string20;

 librod = Record
  titulo:cadena20;
  tematica:string;
  cpag:integer;
 End;

 planetal = Record
  nombre:cadena20;
  añoe:integer;
  cledit:integer;
  ventast:integer;
  detalle: librod;
 End;

 lplaneta = ^npla;
 npla = Record
  dato:planetal;
  sig:lplaneta;
 End;

 libro = Record
  titulo:cadena20;
  nombree:cadena20;
  cpag:integer;
  anoedit:integer;
  cventas:integer;
  area = rango_area;
 End;


 lista = ^nodo;

 nodo = Record
  dato:libro;
  sig:lista;
 End;


 tematica = array [rango_area] Of string;




Procedure leerlibro (Var l:libro;);

Begin
 ReadLn(l.titulo);
 ReadLn(l.nombree);
 ReadLn(l.cpag);
 ReadLn(l.anoedit);
 ReadLn(l.cventas);
 ReadLn(l.area);
End;


Procedure agregaradelante(Var l:lista; l:libro);

Var nuevo : lista;

Begin
 new(nuevo);
 nuevo^.dato := l;
 nuevo^.sig := l;
 l := nuevo;
End;


Procedure cargarlista(Var l:lista;ldetalle:lplaneta;
                      v_tematica:tematica);

Var li:libros;
Begin

 Repeat
  leerlibro(li);
  agregaradelante(l,li);
  If (li^.dato.nombree='planeta libros')Then

   Begin




   End;

 Until l^.dato.titulo='relato de un naufrago';



End;
