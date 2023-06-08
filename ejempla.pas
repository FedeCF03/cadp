
Program ejerciciodos;

Type 
 numerosPoliza = 1..6;

 clientes = Record
  codigo: integer;
  DNI: integer;
  apellido: string;
  nombre: string;
  CodPoliza: numerosPoliza;
  MontoMensual: real;
 End;

 ListaE = ^nodo;
 nodo = Record
  dato: clientes;
  sig: ListaE;
 End;

 TablaMontoAdicional = array [numerosPoliza] Of real;

Procedure LeerClientes(Var cli: clientes);
Begin
 readln(cli.codigo);
 readln(cli.DNI);
 readln(cli.apellido);
 readln(cli.nombre);
 readln(cli.CodPoliza);
 readln(cli.MontoMensual);
End;

Procedure agregarAdelante(Var L: ListaE; cli: clientes);

Var 
 nue: ListaE;
Begin
 new(nue);
 nue^.dato := cli;
 nue^.sig := L;
 L := nue;
End;

Procedure CargarLista(Var L: ListaE);

Var 
 cli: clientes;
Begin
 Repeat
  LeerClientes(cli);
  agregarAdelante(L,cli);
 Until (cli.codigo = 1122)

End;

Procedure InformarIncisoA(CLINT: clientes;T:TablaMontoAdicional);

Var 
 montoTotal: real;
Begin
 writeln(CLINT.DNI);
 writeln(CLINT.apellido);
 writeln(CLINT.nombre);
 montoTotal := CLINT.MontoMensual + T[CLINT.CodPoliza];
 writeln(montoTotal);
End;

Function cumple(DNI: integer): boolean;

Var 
 digito: integer;
 cant: integer;
Begin
 cant := 0;
 While (DNI <> 0) Do
  Begin
   digito := dni  Mod 10;
   dni := dni Div 10;
   If (digito = 9)Then
    cant := cant+1;
  End;
 cumple := (cant >= 2);
End;

Procedure InformarIncisoB(CLIC: clientes);
Begin
 If (cumple(clic.DNI)) Then
  Begin
   writeln(CLIC.apellido);
   writeln(CLIC.nombre);

  End;


End;


Procedure ProcesarDatos(L: ListaE; T: TablaMontoAdicional);
Begin
 While (L <> Nil) Do
  Begin
   InformarIncisoA(L^.dato,T);
   InformarIncisoB(L^.dato);
   L := L^.sig;
  End;
End;


Procedure Eliminar(Var L:ListaE; DNI:integer);

Var 
 act,ant: ListaE;
Begin
 act := L;
 While (act^.dato.DNI <> DNI) Do
  Begin
   ant := act;
   act := act^.sig;
  End;
 If (act = L)Then
  L := L^.sig
 Else
  ant^.sig := act^.sig;
 dispose(act);
End;


Var 
 L: ListaE;
 DNI:integer;
 T: TablaMontoAdicional;
Begin
 cargarTabla(T); {se dispone}
 L := Nil;
 CargarLista(L);
 ProcesarDatos(L,T);
 readln(DNI);
 Eliminar(L,DNI);
End.
