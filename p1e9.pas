
Program e9;


Var 
  chracter: String;
  _result,emterer,suma,resta: Integer;
Begin

  ReadLn(chracter);
  _result := 0;
  suma := 0;

  Case (chracter) Of 
    '+': While (suma<>1)  Do
           Begin
             ReadLn(emterer);
             _result := _result+emterer;
             If (_result=0)Then suma := 1;
           End;

    '-': While (suma<>1)  Do
           Begin
             ReadLn(emterer);
             _result := _result-emterer;
             If (_result=2)Then suma := 1;
           End;

    Else
      WriteLn ('eso es ilegal');

  End;


End.
