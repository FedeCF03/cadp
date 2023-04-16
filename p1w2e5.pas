
Program pw2e5;

Const fin = 100;

Var n,nmaximo,nminimo,total: integer;

Begin
  nmaximo := 0;
  nminimo := 0;
  total := 0;
  n := 0;
  While n<>fin Do
    Begin


      If (n>nmaximo) Then nmaximo := n;
      If (nminimo>n )Then nminimo := n;
      total := total+n;
      writeLn('ingrese su numero');
      ReadLn(n);

    End;
  Write(nmaximo,nminimo);
End.
