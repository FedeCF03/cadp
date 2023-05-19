
Program p3e5;

Type 
 auto = Record
  marca: string;
  modelo: string;
  precio: integer;
 End;

Var marcaac,modelomcaro,marcamcaro: string;
 cantautos,preciomcaro,ptotal: integer;

Procedure leerauto(Var auto1:auto);
Begin
 WriteLn('marca del auto');
 ReadLn(auto1.marca);
 WriteLn('modelo del auto');
 ReadLn(auto1.modelo);
 WriteLn('precio del auto');
 ReadLn(auto1.precio);
End;


Var auto1: auto;
Begin

 leerauto(auto1);
 While (auto1.marca<>'ZZZ') Do

  Begin

   modelomcaro := auto1.modelo;
   marcamcaro := auto1.marca;
   preciomcaro := auto1.precio;
   ptotal := auto1.precio;
   cantautos := 1;
   marcaac := auto1.marca;
   While (auto1.marca=marcaac) Do
    Begin
     If (auto1.precio>preciomcaro )Then
      Begin
       marcamcaro := auto1.marca;
       preciomcaro := auto1.precio;
       modelomcaro := auto1.modelo;

      End;

     ptotal := ptotal+auto1.precio;
     cantautos := cantautos+1;

     leerauto(auto1);



    End;

   WriteLn('el promedio me precio es',ptotal/cantautos);
   writeLn('la marca del modelo mas caro es',marcamcaro,'modelo mas caro',
           modelomcaro);

  End;



End.
