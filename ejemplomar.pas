
Program ejemplo;


Function espar(dni:integer):Boolean;

Var 
 cumple:Boolean;
 digito:integer;
Begin
 cumple := true;
 While Not(dni=0) And cumple=true Do
  Begin

   digito := dni Mod 10;
   If ( digito Mod 2 = 1) Then cumple := false;
   dni := dni Div 10;
  End;


 espar := cumple;
End;



Procedure agregaralumno( Var cantalumnospares:integer;dni:integer);

Begin

 If (espar(dni)) Then Write('pito');
End;

Var n:integer;

Begin
 n := 2322;
 agregaralumno(n,n);



End.
