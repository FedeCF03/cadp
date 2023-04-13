
Program p1w2e6;

Var a,codigo,precio,b,b2,c,c2: Integer;
Begin
  b2 := 500;
  b := 500;

  a := 0;
  For a:=0 To 4 Do
    Begin
      WriteLn('codigo del producto');
      ReadLn(codigo);
      WriteLn('precio del producto');
      ReadLn(precio);
      If (b>precio)Then
        b := precio;
      c := codigo;
      3

      If (b>b2)Then
        b2 := precio;
      c2 := codigo;

    End;
  WriteLn(b,b2,c,c2);
End.
