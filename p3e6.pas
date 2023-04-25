
Program p3e6;

Type 

  microprocesadores = Record
    marca: string;
    linea: string;
    ccores: integer;
    nm: integer;
    ghz: real;

  End;

Procedure leerprocesador (Var marca,linea:String;Var ccores,nm:integer;Var ghz:
                          real);
Begin

  WriteLn('inserte la marca');
  ReadLn(marca);
  WriteLn('inserte la linea');
  ReadLn(linea);
  WriteLn('inserte la cantidad de cores');
  ReadLn(ccores);
  WriteLn('inserte nm');
  ReadLn(nm);
  WriteLn('inserte la cant de ghz');
  ReadLn(ghz);

End;


Procedure marcalinea222(Var marcaaad:boolean;ccores,nm:integer;marca,linea:
                        String
                        ;Var marcas222,
                        linea222:String);
Begin

  If (ccores>2) And (nm>=22) Then
    Begin
      If (marcaaad=false) Then
        Begin
          marcaaad := true;
          marcas222 := marcas222+marca;
          marcas222 := marcas222+' ,';

        End;
      linea222 := linea222+' ,';
      linea222 := linea222+linea;

    End;

End;

Procedure mca14nm(marcaact:String;cantdeprocesadores14nm:integer;Var
                  cantdeprocesadores14nm1,cantdeprocesadores14nm2:integer;
                  Var marca14nm,marca14nm2:String);
Begin
  If (cantdeprocesadores14nm>cantdeprocesadores14nm1) Then
    Begin
      cantdeprocesadores14nm2 := cantdeprocesadores14nm1;
      marca14nm2 := marca14nm;
      marca14nm := marcaact;
      cantdeprocesadores14nm1 := cantdeprocesadores14nm;

    End
  Else If (cantdeprocesadores14nm>cantdeprocesadores14nm2)Then
         Begin
           marca14nm2 := marcaact;
           cantdeprocesadores14nm2 := cantdeprocesadores14nm;

         End;


End;




Var marcaact,marcas222,linea222,marca14nm,marca14nm2,cantp2ghz: string;
  micro: microprocesadores;
  multicoreprocesadores,mm14nm,cantdeprocesadores14nm,cantdeprocesadores14nm1,
  cantdeprocesadores14nm2:
                           integer
  ;
  marcaaad : Boolean;

Begin
  multicoreprocesadores := 0;
  cantdeprocesadores14nm1 := 0;
  cantdeprocesadores14nm2 := 0;
  marca14nm := '';
  marca14nm2 := '';
  marcas222 := '';
  linea222 := '';

  leerprocesador(micro.marca,micro.linea,micro.ccores,micro.nm,micro.ghz);
  While (micro.ccores<>0) Do
    Begin
      marcaact := micro.marca;
      marcaaad := false;
      cantdeprocesadores14nm := 0;
      While (micro.marca=marcaact ) Do
        Begin

          marcalinea222(marcaaad,micro.ccores,micro.nm,micro.marca,micro.linea,
                        marcas222,
                        linea222);
          If (micro.ccores>1)Then multicoreprocesadores := multicoreprocesadores
                                                           +1;

          If (micro.nm=14)Then cantdeprocesadores14nm := cantdeprocesadores14nm+
                                                         1;
          mca14nm(marcaact,cantdeprocesadores14nm,cantdeprocesadores14nm1,
                  cantdeprocesadores14nm2,marca14nm,marca14nm2);


          leerprocesador(micro.marca,micro.linea,micro.ccores,micro.nm,micro.
                         ghz
          );



        End;


    End;

End.
