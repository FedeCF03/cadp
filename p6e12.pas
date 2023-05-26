
Program p6e12;

Type 
 celular = Record
  android:real;
  tpantalla:real;
  ram:integer;
 End;


 lista = ^nodo;

 nodo = Record

  dato:celular;
  sig:lista;
 End;

Function sumar3gb(c:celular;cant3gb:integer):Integer;

Begin
 If (l^.dato.ram>3) And (l^.dato.tpantalla>=5) Then sumar3gb := cant3gb+1

 Else
  sumar3gb := cant3gb;
End;


Procedure recorrerlista(l:lista);

Var androidact:real;
 cantv,cant3gb,promedioP,cantdispositivos:integer;

Begin
 cant3gb := 0;
 cantdispositivos := 0;
 While Not(l=Nil) Do
  Begin
   androidact := l^.dato.android;
   cantv := 0;

   While (androidact=l^.dato.android) Do
    Begin
     promedioP := promedioP + l^.dato.tpantalla;
     cantv := cantv+1;
     cant3gb := sumar3gb(l^.dato,cant3gb);
     cantdispositivos := cantdispositivos+1;
     l^.sig;
    End;
   WriteLn(cantv);


  End;

 WriteLn(cant3gb);

 WriteLn('tamaño promedio ', promedioP/cantdispositivos );
End;
