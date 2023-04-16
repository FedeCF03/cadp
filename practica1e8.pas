
Program eje8;

Var chra: string;

Var number,vocales: Integer;

Begin
  number := 0;
  vocales := 0;
  Repeat
    ReadLn(chra);
    If ( (chra='a') Or (chra='e') Or (chra='i') Or (chra='o')Or (chra='u') )Then
      vocales := vocales+1;


    number := number + 1;
  Until number = 3;

  Write(vocales);

End.
