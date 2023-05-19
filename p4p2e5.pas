
Program p4p2ej5;

Const dimf = 500;

Type 
 dia = 1..31;
 mes = 1..12;
 ofic = 1..2400;
 cate = 'A'..'F';
 str = string[30];

 fecha = Record
  d : dia;
  m : mes;
  a : integer;
 End;
 cliente = Record
  fec : fecha;
  cat : cate;
  cod : ofic;
  monto : real;
 End;
 vectorclientes = array[1..500] Of cliente;
 vectorcat = array[cate] Of integer;
 vectorciu = array[ofic] Of integer;
 vectormes = array[mes] Of integer;
 vectoranio = array[1900.. 2023] Of integer;

Procedure leerfecha (Var f:fecha);
Begin
 readln (f.d);
 readln (f.m);
 readln (f.a);
End;


Procedure cargarv (Var v:vectorclientes);

Var i:integer;
Begin
 For i:= 1 To dimF Do
  Begin
   leerfecha (v[i].fec);
   readln (v[i].cat);
   readln (v[i].cod);
   readln (v[i].monto);
  End;
End;

Procedure puntoa (v:vectorclientes;)

Var i,mes,ano,anomayor:integer;
Begin
 ano := v[1].fec.a;
 While Not(año=v[500].fec.a) Do
  Begin



  End;
