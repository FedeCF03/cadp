
Program p2p2e102023;

Var cumple : Boolean;
Function esvocal(c: char): boolean;
Begin
  esvocal := (c = 'a') Or (c = 'e') Or (c = 'i') Or(c = 'o') Or(c = 'u');
End;
Procedure cumpleA(Var cumple:Boolean);

Var c: char;
Begin
  WriteLn('ingrese a');
  ReadLn(c);
  While (c <> '&')And(cumple) Do
    Begin
      If (Not esvocal(c))Then
        cumple := esvocal(c)
      Else

        ReadLn(c);

    End;
End;
Function esalfabeto(c: char): boolean;
Begin
  esalfabeto := (c = 'b') Or (c = 'c') Or (c = 'd') Or(c = 'f') Or(c = 'g')Or(c
                = 'h')Or(c = 'l')Or(c = 'j')Or(c = 'k')Or(c = 'n')Or(c = 'ñ');

End;
Procedure cumpleB(Var cumple:Boolean);

Var c: char;
Begin
  Write('ingrese b');
  ReadLn(c);
  While (c<>'#') And (cumple)  Do
    If (Not esalfabeto(c)) Then
      cumple := esalfabeto(c)
    Else
      ReadLn(c);
End;

Begin

  cumple := true;

  If (cumple)Then
    Begin
      cumpleA(cumple);
      If (cumple) Then
        Begin
          cumpleB(cumple);
          If (cumple) Then
            WriteLn('se realizo exitosamente la operancion')
          Else
            WriteLn('no cumpleb')
        End
      Else
        Begin
          WriteLn('no se cumple a')
        End;

    End;





End.
