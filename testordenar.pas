
Program p4p2ej5;

Const dimf = 5;

Type 
 dia = 1..31;
 mes = 1..12;
 ofic = 1..2400;
 cate = 'A'..'F';

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

 vectorclientes = array[1..dimf] Of cliente;
 vectorcat = array[cate] Of integer;
 vectorciu = array[ofic] Of integer;




Procedure cargarv (Var v:vectorclientes);
Procedure leerfecha (Var f:fecha);
Begin
 // writelb ('Dia');
 //readln (f.d);
 writeln ('Mes');
 readln (f.m);
 writeln ('Ano');
 readln (f.a);
End;

Var i:integer;
Begin
 For i:= 1 To dimF Do
  Begin
   leerfecha (v[i].fec);
   writeln ('Categoria');
   readln (v[i].cat);
   writeln ('Codigo');
   readln (v[i].cod);
   writeln ('Monto');
   readln (v[i].monto);
  End;
End;

Function promedio(total:real):real;
Begin
 promedio := total/dimf;
End;

Function cantclientesricos(v:vectorclientes;promedio:real):integer;

Var i,cantricos:integer;
Begin
 cantricos := 0;
 For i:=1 To dimf Do
  Begin
   If (v[i].monto>promedio)Then cantricos := cantricos + 1;
  End;
 cantclientesricos := cantricos;
End;

Procedure inicializarvc (Var v:vectorcat; Var v1:vectorciu);

Var i : char;
 x : integer;
Begin
 For i := 'A' To 'F' Do
  v[i] := 0;
 For x:= 1 To 2400 Do
  v1[x] := 0;
End;


Procedure Ordenar ( Var v: vectorciu);

Var i, j, p, item: integer;
Begin
 For i:= 1 To 10 Do
  Begin
   p := i;
   For j := i+1 To 2400 Do
    If v[ j ] > v[ p ] Then
     p := j;
   item := v[ p ];
   v[ p ] := v[ i ];
   v[ i ] := item;
  End;
End;


Procedure puntob(cat:cate;Var vcat:vectorcat);
Begin

 vcat[cat] := vcat[cat]+1;
End;

Procedure puntoc (ciu:ofic; Var vciu:vectorciu);
Begin
 vciu[ciu] := vciu[ciu] + 1;
End;


Procedure anomax (ano, valor : integer; Var anomax,max:integer);
Begin
 If (valor > max) Then
  Begin
   max := valor;
   anomax := ano;
  End;
End;

Procedure procesardatos (v:vectorclientes;Var vcat:vectorcat; Var vciu:vectorciu; Var anomayor, clientric : integer);

Var i, max,contratosanio,  anioactual, contratosmes:integer;
 mesactual : mes;
 total : real;

Begin
 max := -1;
 total := 0;
 i := 1;
 While (i<=dimf) Do
  Begin
   anioactual := v[i].fec.a;
   contratosanio := 0;
   While (i<=dimf) And (v[i].fec.a=anioactual) Do
    Begin
     mesactual := v[i].fec.m;
     contratosmes := 0;

     While (i<=dimf) And (v[i].fec.a=anioactual) And (mesactual=v[i].fec.m) Do
      Begin
       contratosanio := contratosanio + 1;
       contratosmes := contratosmes+1;
       total := total+v[i].monto;
       puntob(v[i].cat,vcat);
       puntoc(v[i].cod, vciu);
       i := i + 1;

      End;

     writeln ('Contratos en el mes ',mesactual,' son ' ,contratosmes);
    End;
   anomax (anioactual,contratosanio,anomayor,max);
   writeln('Contratos en el anio ', anioactual, ' son ', contratosanio);

  End;

 clientric := cantclientesricos(v,promedio(total));



End;


Var 
 x:integer;
 i:cate;
 anomayor, clientric : integer;
 v : vectorclientes;
 vc1 : vectorcat;
 vc2 : vectorciu;

Begin
 inicializarvc (vc1, vc2);
 cargarv(v);
 procesardatos (v, vc1, vc2, anomayor, clientric);
 ordenar (vc2);

 writeln('cant de clientes con mucha plata', clientric);
 writeln ('El año con mayor contratos fue ', anomayor);
 For i:= 'A' To 'F' Do
  writeln ('La categoria ', i, ' tiene ', vc1[i]);
 For x := 1 To 10 Do
  Begin
   writeln ('Top 10 ciudades con mas clientes');
   writeln (vc2[x]);
  End;
End.



End;
