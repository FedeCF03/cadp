
Program p1wee7;

Var puesto,a: Integer;
  nombre,p1,p2,p99,p100: String;
Begin

  For a:=0 To 3 Do
    Begin
      ReadLn(puesto);
      ReadLn(nombre);
      If puesto=1 Then p1 := nombre;
      If puesto=2 Then p2 := nombre;
      If puesto=99 Then p99 := nombre;
      If puesto=100 Then p100 := nombre;



    End;

End.
