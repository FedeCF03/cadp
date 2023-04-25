
Program p3e7;

Type 
  universidades = Record
    cdi: string;
    uni: string;
    cantinves: integer;
    cantbecarios: integer;
    cantcdi: integer;
  End;
Procedure leeruniversidad (Var universidad:universidades);
Begin
  WriteLn('cdi');
  ReadLn(universidad.cdi);
  WriteLn('uni');
  ReadLn(universidad.uni);
  WriteLn('cantinves');
  ReadLn(universidad.cantinves);
  WriteLn('cantbecarios');
  ReadLn(universidad.cantbecarios);
  WriteLn('cantcdi');
  ReadLn(universidad.cantcdi);


End;

Procedure mcinvest(universidad:universidades; Var univermayorcantdinves:integer;
                   Var unimayor:String);
Begin

  If ( universidad.cantinves>univermayorcantdinves) Then
    Begin
      univermayorcantdinves := universidad.cantinves;
      unimayor := uni;
    End;
  Writeln(universidad.cantcdi);

End;

Procedure ccmcdb(cdi:String;cantb:integer;Var cantb1,cantb2:integer;Var centro1,
                 centro2:String);
Begin

  If (cantb>cantb1)Then
    Begin
      cantb2 := cantb1;
      centro2 := centro1;
      cantb1 := cantb;
      centro1 := cdi;
    End
  Else If (cantb>cantb2)Then
         Begin
           cantb2 := cantb;
           centro2 := cdi;
         End;



End;


Var univermayorcantdinves,cantb1,cantb2,: integer;
  universidad: universidades;
  unimayor,centro1,centro2,uniact: string;
Begin
  cantb1 := 0;
  cantb2 := 0;
  univermayorcantdinves := 0;
  leeruniversidad(universidad);
  While (univerdad.cantinves<>0) Do
    Begin
      uniact := universidad.uni;
      While (universidad.uni=uniact) Do
        WriteLn(universidad.cantcdi);
      mcinvest(universidad,univermayorcantdinves,unimayor);
      ccmcdb(universidad.cdi,universidad.cantbecarios,cantb1,cantb2centro1,
             centro2);
      leeruniversidad(universidad);

    End;


End.
