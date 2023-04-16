
Program p2p2e112023;

Function noesa(c:char): Boolean;
Begin
  noesa := (c<>'$');
End;

Procedure cumplea(Var cumple:Boolean;Var longa:integer);

Var c: Char;

Begin
  WriteLn('ingrese el caracter');
  ReadLn(c);
  While (c<>'%') And (cumple)  Do
    Begin
      If (Not noesa(c)) Then
        Begin
          Write('el valor es no es valido $');
          cumple := noesa(c);

        End
      Else
        Begin
          ReadLn(c);
          longa := longa+1;
        End;
    End;
End;

Procedure sacarb(Var cumple:Boolean;Var longa,caracarroba:integer);

Var caracb: integer;

Var c: Char;

Begin
  caracb := 1;
  WriteLn('ingrese el caracter');
  ReadLn(c);
  While (c<>'*') And (cumple) And (caracb<>longa)   Do
    Begin
      ReadLn(c);
      caracb := caracb+1;
      If (c='@')Then
        caracarroba := caracarroba+1;

    End;

End;

Var cumple: Boolean;

Var caracarroba,longa: Integer;

Begin
  cumple := true;
  longa := 0;
  caracarroba := 0;
  cumplea(cumple,longa);
  If (cumple)Then
    Begin
      sacarb(cumple,longa,caracarroba);
      If (caracarroba>=3)Then
        write('la cadena cumple con los requisitos')
      Else
        Write('la  cadena no cumple con los requisitos');
    End
  Else
    WriteLn('la cadena contiene $');

End.
