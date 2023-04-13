
Program p1wee9;

Const 
  fin = 0;

Var a,montomes,monto,ventasdia: integer;

Begin
  monto := 0;
  montomes := 0;
  For a:=0 To 4 Do
    Begin
      ventasdia := 0;
      ReadLn(monto);
      While monto<>fin  Do
        Begin
          Write('monto de la venta padreeeeeeee');
          ReadLn(monto);
          ventasdia := ventasdia+1;
          montomes := montomes+monto;
        End;
      WriteLn('las ventas del dia fueroin chanaaaaaaaaaaaaaaaaannananana ',
              ventasdia-1);
    End;
  WriteLn(




'el precio de lo mque vendieronnnnnnnnn fue deeeeeeeeeeeeeeee tararanranranranrna '
          ,
          montomes);


  Write('hola',2);


End.
