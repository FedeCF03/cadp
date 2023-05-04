
Program p4p2e2;

Const rango = 499;

Type 
 alumnos =  array[0..rango] Of string;



Procedure leeralumnos(Var v:alumnos;Var i:integer);

Var i:integer;
 n:string;

Begin
 ReadLn(n);
 i := 0;
 While Not(n='ZZZ') And Not(i=499) Do
  Begin
   v[i] := n;
   i := i+1;
   ReadLn(n);

  End;

End;
Procedure eliminargemelo{gemelos feo caca feo caca feo puto}(pepito:String;Var v:alumnos);

Var seecontro:Boolean;
 i:integer;
Begin
 seecontro := false;
 i := 0;
 While Not(seecontro=true) And Not(i=499) Do
  Begin
   If (v[i]=pepito)Then
    Begin
     v[i] := '';
     seecontro := true;
    End;
   i := i+1;

  End;


End;

Procedure poneren4{alla la estan poniendo en 4}(n:String;Var v:nombres);
Begin
 v[4] := n;
End;

Procedure leernombre(Var v:alumnos; Var i :integer;)
Begin
 ReadLn(v[i]);
 i := i+1;

End;





Var v:alumnos;

Begin

 leeralumnos(v);
 eliminargemelo('fede',v);
 Write(v[0],v[1]);

End.
