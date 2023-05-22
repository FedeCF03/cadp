



{La cátedra de CADP necesita un programa para generar el listado de alumnos ingresantes que rendirán el parcial. 
Para ello, la cátedra DISPONE de un listado con todos alumnos que ingresaron este año a la facultad. 
De cada alumno se conoce su DNI, nombre y apellido, nota obtenida en curso de ingreso (entre 4 y 10), 
turno (entre 1 y 4) y si estuvo presente o ausente en cada una de las 12 clases de práctica.

a. Realizar un módulo que reciba la información de los alumnos y retorne una nueva estructura de datos que contenga 
sólo aquellos alumnos que podrán rendir el parcial. Para poder rendir el parcial, 
los alumnos deben contar con al menos 8 asistencias en las 12 clases de práctica.

b. Realizar un módulo que reciba la estructura de datos generada en el inciso anterior, e IMPRIMA en pantalla:
Apellido y nombre y el DNI de los alumnos que hayan obtenido nota 8 o superior en el ingreso
Turno con mayor cantidad de alumnos en condiciones de rendir el examen.
Cantidad de alumnos que no posean ningún dígito cero en su DNI.
NOTA: Implementar el programa principal.}



Program parcial2;

Type 
 str = string[20];
 nota = 4..10;
 turno = 1..4;
 asistencias = 1..12;

 alumno = Record
  dni:integer;
  nombre:str;
  apellido:str;
  notas:nota;
  turn:turno;
  presente:vectorasist;
 End;

 vectorasist = array[asistencias] Of boolean;
 vturnos = array[turno] Of integer;

 lista = ^nodo;
 nodo = Record
  dato:alumno;
  sig:lista;
 End;

Function cumple (v : vectorasist):boolean;

Var i:integer;
Begin
 i := 1;
 cant := 0;
 While Not(i=12) And Not(cant=8) Do
  Begin
   If (v[i]) Then
    cant := cant + 1;
   i := i + 1;
  End;
 cumple := (cant >= 8);
End;

Procedure agregaradelante (Var l:lista; a:alumno);

Var aux : lista;
Begin
 If (cumple (a.presente) Then
  Begin
   new (aux);
   aux^.dato := a;
   aux^.sig := l;
   l := aux;
  End;
End;

Procedure boeeeeeeenasnotas(d:alumno):boolean;


Begin
 If (d.nota>=8)Then
  Begin

   writeln(d.nombre);
   writeln(d.apellido);
   writeln(d.dni);


  End;

End;

Procedure cargarlista(Var l:lista;l1:lista)
Begin
 l := Nil;
 While (l1<>Nil) Do
  Begin
   agregaradelante(l,l1^.dato);
   l1 := l1^.sig;
  End;
End;

Procedure inciendob(l:lista);

Begin
 While Not(l=Nil) Do
  Begin
   boeeeeeeenasnotas(l.dato)



   l^.sig;
   If (tieneceros (l^.dato.dni) Then
    writeln (l^.dato.nombre, l^.dato.apellido)
    l := l^.sig;
  End;

End;

Function tieneceros (dni : integer):boolean;

Var num, dig:integer;
 hubocero : boolean;
Begin
 hubocero := false;
 num := dni;
 While (num <> 0) And Not(hubocero) Do
  Begin
   dig := num Mod 10;
   If (dig = 0) Then
    hubocero := true
   Else num := num Div 10;
  End;
 tieneceros := hubocero
End;
