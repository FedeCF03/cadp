
Program exPointers;

Var 
 number: integer;
 iptr: ^integer;
 y: ^word;

Begin
 number := 100;
 writeln('Number is: ', number);
 iptr := @number;
 writeln('iptr points to a value: ', iptr^);

 iptr^ := 200;
 writeln('Number is: ', number);
 writeln('iptr points to a value: ', iptr^);
 y := addr(iptr);
 writeln(y^);
End.
