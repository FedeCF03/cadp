
Program p2p2e8;

Var precio,codigo,productob,productob2,a,preciob,preciob2,pantaloncaroprecio,
  pantaloncarocodigo,preciototal: integer;

Var tipo: string;

Procedure masbaratouwu(precio,codigo:integer);
Begin
  If (precio<=preciob) Then
    Begin

      preciob2 := preciob;
      preciob := precio;
      productob2 := productob;
      productob := codigo;
    End
  Else If 
          (precio < preciob2) Then

         productob2 := codigo;
  preciob2 := precio;

End;

Procedure pantalonmascaro(tipo:String;precio,codigo:integer);
Begin
  If (pantaloncaroprecio<precio And tipo='pantalon')Then
    pantaloncaroprecio := precio;
  pantaloncarocodigo := codigo;

End;

Procedure preciopromedio (preciototal:interger);
Begin
  preciototal/a;
End;



Begin
  preciototal := 0;
  preciob := 9999;
  preciob2 := 9999;
  pantaloncaroprecio := 0;
  For a:=0 To 2 Do
    Begin
      WriteLn('inserte precio');
      ReadLn(precio);
      WriteLn('inserte tipo');
      ReadLn(tipo);
      WriteLn('inserte codigo');
      ReadLn(codigo);
      masbaratouwu(precio,codigo);
      pantalonmascaro(tipo,precio,codigo);
      preciototal := preciototal+precio
    End;

  preciopromedio(preciotoal);
End.
