
Program repoas;

Type 
 categoria = [1..26];
 producto = Record

  name:string ;
  pkilo:integer;

 End;

 compra = Record
  dni:integer;
  cat:categoria;
  cantk:integer;
 End;
 //ordenada por dni

 clientemayor = Record

  dni:integer;
  cantcompras:integer;
 End;

 lista = ^nodo;

 nodo = Record
  dato:compra;
  sig:lista;
 End;



 productos = array [categoria] Of producto;
 montos = array [categoria] Of integer;

Procedure leerproducto( Var p:producto);


Begin
 ReadLn(p.name);
 ReadLn(p.pkilo);
End;

Procedure cargarproducto( Var v:productos );

Var p:producto;
 i:integer;

Begin

 For i:=1 To 26 Do
  Begin
   leerproducto(p);
   v[i] := p;
  End;
End;

Procedure inicializarv(Var v:montos);

Var i:integer;
Begin
 For i:=1 To 26 Do
  Begin

   v[i] := 0;


  End;
End;


Function espar(dni:integer):boolean;

Var digito,cantpares : integer;

Begin
 cantpares := 0;
 While Not(dni=0) Do
  Begin

   digito := dni Mod 10 ;
   dni := dni Div 10;

   If (digito Mod 2 = 0) Then
    cantpares := cantpares+1;

  End;

 If (cantpares>=3) Then
  espar := true
 Else
  espar := false;

End;

Procedure esmayor(Var clientem:clientemayor; cantcompras2,dni:integer; )
Begin

 If (cantcompras2>clientem.cantcompras)Then
  Begin
   clientem.dni := dni;
   clientem.cantcompras := cantcompras2;
  End;


End;

Procedure procesar(v:productos; l:lista;Var clientem:clientemayor;Var vmontos:montos;cantpares:integer;
);

Var cantcompras2,dniactual:integer;


Begin

 While Not(l=Nil) 
  Do
  Begin

   dniactual := l^.dato.dni;
   cantcompras := 0;
   While  Do
    Begin
     cantcompras := cantcompras+1;
     vmontos[l^.dato.cat] := v[l^.dato.cat].pkilo*l^.dato.cantk;
     If (espar(l^.dato.dni)) Then cantpares := cantpares+1;


    End;
   esmayor(clientem,cantcompras2,dniactual);


   l := l^.sig;
  End;


End;
