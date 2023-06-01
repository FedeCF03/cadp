
Program repaso;

Type 



 viaje = Record

  nro:integer;
  cod:integer;
  direc:string;
  direcdes:string;
  km:real;
 End;

 lista = ^nodo;
 nodo = Record

  dato:viaje;
  sig:lista;
 End;

 lista agregarlista5km ( Var l:lista , v:viaje);

Var ant,act,nuevo:lista;

Begin
 If (v.km>5) Then
  Begin

   New(nuevo);
   nuevo^.dato := v;
   act := l;

   While Not(act=Nil) And (v.nro>act^dato.nro) Do
    Begin
     ant := act;
     act := act^.sig;
    End;

   If (act=l)
    Then
    l := nuevo
   Else
    ant^.sig := nuevo;
   nuevo^.sig := act;
  End;
End;

Procedure calcularmax(Var km1,km2:real;kmactual:real;Var codm1,codm2:integer; codactual:integer);


Begin

 If (kmactual>km1) Then

  Begin
   km2:km1;
   codm2:codm1;
   km1:kmactual;
   cordm1:codactual;
  End
 Else If ( kmtotal>km2) Then

       Begin
        km2 := kmactual;
        codm2 := codactual;
       End;



End;





Procedure leerlista(l:lista; Var l2:lista);

Var codactual,codm1,codm2,km1,km2,kmactual:integer;


Begin
 codm1 := 0;
 codm2 := 0;
 km1 := 0;
 km1 := 0;
 While Not(l=Nil) Do
  Begin
   kmactual := 0;
   codactual := l^.dato.cod;

   While (codactual=l^.dato.cod) Do
    Begin
     kmactual := l^.dato.km + kmactual;
     agregarlista5km(l2,l^.dato);

    End;
   calcularmax(km1,km2,kmactual,codm1,codm2,codactual);

  End;

 WriteLn(codm2 , codm1);

End;
