
Program p4p2e3;

Const rango = 3;

Type 
 dias = 1 .. 31;
 viajes = Record
  dia:dias;
  dinero:integer;
  km:integer;
 End;
 info_viajes = array[1..rango] Of viajes;


Procedure leerviajes(Var v:info_viajes);

Var i:integer;
Begin
 ReadLn(v[1].km);
 ReadLn(v[1].dinero);
 ReadLn(v[1].dia);
 i := 2;

 While Not(i=rango) And Not(v[i].km=rango)  Do
  Begin
   ReadLn(v[i].km);
   If (v[i].km=0) Then
    Begin
     i := rango;

    End
   Else
    Begin
     ReadLn(v[i].dinero);
     ReadLn(v[i].dia);

    End;


  End;


End;
Procedure informe(v:info_viajes);

Var i,montototalm,mdinero,pmdinero:integer;
Begin
 montototal := 0;
 mdinero := 999999;
 For i :=1 To rango Do
  Begin
   montototal:v[i].dinero+montototal;
   If (mdinero>v[i].dinero)Then
    Begin
     mdinero := v[i].dinero;
     pmdinero := i;
    End;
  End;
 WriteLn('el dia con menos dinero fue', v[pmdinero].dia,' y los km fueron',v[pmdinero].km );
 WriteLn('el promedio de dinero fue',montototalm/rango);
End;

Var v :info_viajes;

Begin

 leerviajes(v);
 WriteLn(v[1].dia);
End.
