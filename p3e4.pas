
Program p3e4;

Type 

  clientes = Record
    codigo: integer;
    cantlineas: integer;
    ntelefono: integer;
    mconsumidos: integer;
    mbconsumidos: integer;
  End;


Procedure leercliente(Var codigo, cantlineas, ntelefono, mconsumidos,
                      mbconsumidos:integer);
Begin
  Writeln('insert codigo');
  ReadLn(codigo);
  Writeln('insert cantlineas');
  ReadLn(cantlineas);
  Writeln('insert ntelefono');
  ReadLn(ntelefono);
  Writeln('insert mconsumidos');
  ReadLn(mconsumidos);
  Writeln('insert mbconsumidos');
  ReadLn(mbconsumidos);

End;
Procedure leerlinea(Var  mconsumidos,
                    mbconsumidos:integer);
Begin


  Writeln('insert mconsumidos');
  ReadLn(mconsumidos);
  Writeln('insert mbconsumidos');
  ReadLn(mbconsumidos);

End;


Procedure datoscliente(codigo,cantlineas:integer; Var
                       mconsumidos,mbconsumidos,canttotalminutos,canttotalmb:
                       integer);

Var contador: integer;

Begin
  canttotalminutos := mconsumidos;
  canttotalmb := mbconsumidos;
  contador := 0;

  Repeat
    leerlinea(mconsumidos,mbconsumidos);
    contador := contador + 1;
    canttotalminutos := mconsumidos+canttotalminutos;
    canttotalmb := canttotalmb+mbconsumidos;

  Until contador=cantlineas-1;

End;


Var cliente : clientes;

Var canttotalminutos,canttotalmb: integer;
Begin
  canttotalminutos := 0;
  canttotalmb := 0;
  leercliente(cliente.codigo,cliente.cantlineas,cliente.ntelefono,cliente.
              mconsumidos,cliente.mbconsumidos);
  datoscliente(cliente.codigo,cliente.cantlineas,cliente.
               mconsumidos,cliente.mbconsumidos,canttotalminutos,canttotalmb);

  WriteLn(canttotalminutos,'minutos',canttotalmb,'minutos');
End.
