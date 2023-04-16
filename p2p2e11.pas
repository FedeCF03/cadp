
Program p2p2e11;

Var nroinscripcion,nroinscripcion1,nroinscripcion2,nroinscripcion3,
  nroinscripcion4,alumnospar,alumnos: integer;

Var apellido,nombre,apellido1,apellido2,nombre1,nombre2: string;

Var porcentajepar: real;
Function apellidochico: integer;
Begin
  If (nroinscripcion<=nroinscripcion1) Then
    Begin

      nroinscripcion2 := nroinscripcion1;
      nroinscripcion1 := nroinscripcion;
      apellido2 := apellido1;
      apellido1 := apellido;
    End
  Else If 
          (nroinscripcion < nroinscripcion2) Then
         Begin
           nroinscripcion2 := nroinscripcion;
           apellido2 := apellido;

         End


End;

Function nromasglande: integer;
Begin
  If (nroinscripcion3<nroinscripcion) Then
    Begin
      nroinscripcion4 := nroinscripcion3;
      nroinscripcion3 := nroinscripcion;
      nombre2 := nombre1;
      nombre1 := nombre;
    End
  Else If (nroinscripcion4<nroinscripcion)Then
         Begin
           nombre2 := nombre;

           nroinscripcion4 := nroinscripcion;

         End


End;

Function nropar: integer;
Begin

  porcentajepar := alumnospar/alumnos*100;
  WriteLn(porcentajepar);
End;



Begin
  nroinscripcion2 := 9999;
  nroinscripcion1 := 9999;
  nroinscripcion3 := 0;
  nroinscripcion4 := 0;
  nombre1 := ' ';
  nombre2 := ' ';
  alumnos := 0;
  alumnospar := 0;
  Repeat

    ReadLn(nroinscripcion);
    If nroinscripcion<>1200 Then
      Begin
        ReadLn(apellido);
        ReadLn(nombre);
        apellidochico;

        nromasglande;
        alumnos := alumnos+1;
        If (nroinscripcion Mod 2=0)Then
          alumnospar := alumnospar+1;
        WriteLn(alumnospar);
        WriteLn(alumnos);

      End;

  Until nroinscripcion=1200;
  nropar;



End.
