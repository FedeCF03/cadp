
Program p4e4;

Type 

  vector = array[integer] Of 0..99;

Procedure cargararray(Var arrai:vector);

Var 
  i,x: integer;
Begin
  x := 0;
  For i:=0 To 99 Do
    Begin
      arrai[i] := x+i;


    End;


End;
Procedure posicion(Var x:integer;arrai:vector);

Var i,e: integer;
  encontre: boolean;
Begin
  encontre := false;
  e := 0;
  For i:=0 To 99 Do
    Begin
      If (encontre<>true)Then
        Begin
          If (arrai[i]=x) Then
            Begin
              x := i;
              encontre := true;
            End
        End;
    End;

  sdad  If (encontre=false) Then x := -1;

End;


Procedure intercambio (x,y:integer;arrai:vector;Var arrai2:vector);

Var i,p,p2: integer;
Begin

  For i:=0 To 99 Do
    Begin

      If (arrai[i]=x) Then
        Begin
          p := i;

        End

    End;
  p2 := 0;
  For i:=p To y Do
    Begin
      arrai2[p2] := arrai[p];
      p2 := p2+1;
      WriteLn(p2);
    End;

End;

Function sumavector(arrai:vector): integer;

Var i,suma: integer;
Begin
  suma := 0;
  i := 0;
  For i:=0 To 99 Do
    Begin

      suma := arrai[i]+suma;

    End;
  sumavector := suma;
End;
Function promediovector(arrai:vector): real;

Var i,suma: integer;
  reall: real;
Begin
  suma := 0;
  i := 0;
  For i:=0 To 99 Do
    Begin

      suma := arrai[i]+suma;

    End;
  reall := (suma/99);
  promediovector := reall;
End;
Function elementoMaximo(arrai:vector): integer;

Var i,mayor,pmayor: integer;
Begin
  mayor := 0;




//aca capaz tenes que poner menos por si tiene de mayor vvalor -1 no se que preferiran los profes(preguintar si se da laocacion)}
  For i:=0 To 99 Do

    Begin
      If (arrai[i]>mayor) Then
        Begin
          mayor := arrai[i];
          pmayor := i;
        End;


    End;
  elementoMaximo := pmayor;
End;

Function elementoMin(arrai:vector): integer;

Var i,menor,pmenor: integer;
Begin
  menor := 0;











//aca capaz tenes que poner menos por si tiene de mayor vvalor -1 no se que preferiran los profes(preguintar si se da laocacion)}
  For i:=0 To 99 Do

    Begin
      If (menor>arrai[i]) Then
        Begin
          menor := arrai[i];
          pmenor := i;
        End;


    End;
  elementoMin := pmenor;
End;


Var arrai,arrai2: vector;
  i: integer;

Begin
  i := 54;
  cargararray(arrai);
  posicion(i,arrai);
  WriteLn(i);
  //intercambio(50,56,arrai,arrai2);

  WriteLn(  sumavector(arrai));
  WriteLn(promediovector(arrai): 0: 0
                                    );
  WriteLn(elementoMaximo(arrai));
  WriteLn(elementoMin(arrai));




End.
