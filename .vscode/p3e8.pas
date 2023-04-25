
Program p3e8;

Type 

  docentes = Record
    dni: integer;
    nombre: string;
    apellido: string;
    email: string;

  End;
  proyectos = Record
    codigou: integer;
    t: string;
    docente: docentes;
    cantalumproyect: integer;
    nombreescu: string;
    localidad: string;
  End;

Procedure mayorcantalumnos(proyecto)


Var escuelatotal,escuelatotallocalidad: integer;
  localidadact,escuelaact: string;

Begin
  escuelatotal := 0;

  While (proyecto.codigou=-1 ) Do
    Begin

      escuelatotallocalidad := 0;
      localidadact := proyecto.localidad;
      While (proyecto.localidad=localidadact) Do
        escuelaact := proyecto.nombreescu;
      Begin
        While (proyecto.escuela=escuelaact) Do
          Begin
            escuelatotal := escuelatotal+1;
            escuelatotallocalidad := escuelatotallocalidad +1;
          End;

      End;
      WriteLn(escuelatotallocalidad);
    End;

  WriteLn(escuelatotallocalidad);
End.
