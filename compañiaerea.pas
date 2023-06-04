
Program parcial;

Const 
 maxvuelo = 1200;

Type 
 rango_vuelo = [1..maxvuelo];
 ticket = Record
  codv:rango_vuelo;
  dni:integer;
  opais:string;
  dpais:string;
  valort:real;
 End;

 vuelo = Record;
  pasajeros:integer;
  opais:string;
  dpais:string;
 End;

 vcantpasajeros = array [rango_vuelo] Of vuelo;

 lticket = ^nticket;

 nticket = Record

  dato:ticket;
  sig:lticket;
 End;

Procedure vuelodentro(Var cantv:integer; v:vcantpasajeros);

Var i:integer;
Begin
 For i:=1 To maxvuelo 
  Do
  Begin
   If ((v[i].dpais=v[i].opais)And (v[i].pasajeros>50)) Then
    cantv := cantv +1 ;

  End;



End;

Procedure inicializarv(Var v:vcantpasajeros);

Var i:integer;
Begin

 For i:=1 To maxvuelo Do
  Begin

   v[i] := 0;

  End;


End;


Procedure maxgasto( Var dnimax:integer; Var montomax:real; dni:integer; monto:real);
Begin
 If (monto>montomax)Then
  Begin
   dnimax := dni;
   montomax := monto;
  End;
End;

Function termina50 (dni:integer):boolean;

Var digito:integer;
Begin
 digito := dni Mod 10;

 termina50 := (digito=0) Or( digito=5);

End;


Procedure leerlista( l:lticket;Var cantv,dnimax,cantdni50:integer);

Var v:vcantpasajeros;
 montomax:real;
 dniactual:integer;



Begin
 montomax := 0;
 inicializarv(v);
 While Not(l=Nil) Do
  Begin
   dniactual := l^.dato.dni;
   monto := 0;
   While (dniactual=l^.dato.dni) Do
    Begin
     monto := monto + l^.dato.valort;
     v[l^.dato.codv].pasajeros := v[l^.dato.codv].pasajeros +1 ;
     v[l^.dato.codv].opais := l^.dato.opais;
     v[l^.dato.codv].dpais := l^.dato.dpais;


     l := l^.sig;
    End;
   maxgasto(dnimax,montomax,monto,dniactual);
   If (termina50(dniactual))Then
    cantdni50 := cantdni50 +1;


  End;
 vuelodentro(cantv,v);

End;

Var l:lticket;
 cantv,dnimax,cantdni50:integer;



Begin
 cantv := 0;
 cantdni50 := 0;
 cargartickets(l);
 //se dispone
 leerlista(l,cantv,dnimax,cantdni50);
End.
