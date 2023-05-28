
Program repaso6;

Type 
 categoria = 1..20;
 compra = Record
  dni:integer;
  cat:categoria;
  ckilos:real;
 End;

 lista = ^nodo;

 nodo = Record

  dato:compra;
  sig:list;
 End;

 cats = array [categoria] Of integer;


Procedure leercompra(Var c:compra);

Begin
 ReadLn(c.dni);
 If Not(c.dni=-1) Then
  Begin
   ReadLn(c.cat);
   ReadLn(c.ckilos);
  End;
End;

Procedure insertarcompra( Var l :lista; c:compra);

Var nuevo,ant,act:lista;

Begin

 new(nuevo);
 nuevo^.dato := c;
 ant := list;
 act := lista;

 While Not(act=Nil) And (dato.dni>c.dni)  Do
  Begin
   ant := act;
   act := act^.sig;
  End;

 If (ant=act) Then l := nuevo
 Else
  Begin
   ant^.sig := nuevo;
   nuevo^.sig := act;

  End;
End;

Procedure agregarcompras(Var l:lista);

Var c:compra;

Begin

 leercompra(c);
 While Not(c.dni=-1) Do
  Begin
   insertarcompra(l,c);
   leercompra(C);

  End;


End;



Procedure dnimpobre(Var dnipobre,cantdinerom:integer; cantdinero,dniactual:integer);
Begin
 If (cantdinerom>cantdinero)Then
  Begin
   dnipobre := dniactual;
   cantdinerom := cantdinero;
  End;
End;

Procedure inicializararray(Var v:cats);

Var i:integer;

Begin

 For i:=1 To 20 Do
  Begin
   v[i] := 0;
  End;

End;



Function espar(dni:integer):boolean;

Var  digito,cantim:integer;
Begin
 cantim := 0;
 While Not(dni=0) Do
  Begin

   digito := dni Mod 10;
   dni := dni Div 10;

   If (digito Mod 2 = 1) Then
    cantim := cantim +1 ;


  End;

 If (cantim>=5) Then espar := true
 Else espar := false;


End;




Procedure procesarinfo(categorias:cat; l:lista;Var dnipobre,cantdnipar:integer; Var v:cats);

Var cantdinero,cantdinerom,dniactual:integer;
Begin

 cantdinerom := 999999999999999999;
 While Not(L=Nil) Do
  Begin
   cantdinero := 0;
   dniactual := l^.dato.dni;
   While (dniactual=l^.dato.dni) 
    Do
    Begin
     cantdinero := cantdinero+l^.dato.monto;

     v[l^.dato.cat] := v[l^.dato.cat]+1;

     l := l^.sig;
    End;
   If ( espar(dniactual)) Then cantdnipar := cantdnipar+1;

   dnimpobre(dnipobre,cantdinerom,cantdinero,dniactual,categorias);
  End;
End;


Var l:lista;
 v:cats;
 cantdnipar,dnipobre:integer;



Begin

 l := Nil;
 inicializararray(v);
 cantdnipar := 0;
 agregarcompras(l);
 procesarinfo(categorias,l,dnipobre,cantdnipar,v);


End.
