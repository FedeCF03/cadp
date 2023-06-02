
Program repaso;



Type 
 semanas = [1..42];

 pesos = array [semanas] Of real;
 paciente = Record
  nombre:string;
  apellido:string;
  peso:pesos;
 End;


 lista = ^nodo;

 nodo = Record

  dato:paciente;
  sig:lista;
 End;


Procedure leerlista(l:lista;v:pesos,diml:integer);

Var i,seman:integer;
 pesom:real;
Begin


 While Not(l=Nil) Do
  Begin
   pesototal
   pesom := 0;
   seman := 0;
   For i:=1 To diml Do
    Begin
     v[i]


    End

  End;

End;
