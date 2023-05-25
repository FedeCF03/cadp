
Program p6e11;

Type 

 alumno = Record

  nroalu:integer;
  apellido:string;
  promedio:real;
 End;
 lista = ^nodo;

 nodo = Record
  dato:alumno;
  sig:lista;

 End;

 valu = array [0..10] Of alumno;
