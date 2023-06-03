
Program repaso;

Const 
 maxmot = 7;

Type 
 rango_motivo = 1..maxmot;
 trans = Record
  onro:integer;
  odni:integer;
  dnro:integer;
  ddni:integer;
  fecha:fechas;
  hora:string;
  monto:real;
  codm:codmotivo;
 End;

 fechas = Record
  dia:integer;
  mes:integer;
 End;

 ltrans = ^nodo_trans;

 nodo_trans = Record
  dato:trans;
  sig:lista;
 End;

 vmot = array [rango_motivo] Of Integer;


Procedure insertar(Var l:ltrans; t:trans);

Var nuevo,ant,act:ltrans;
Begin
 new(nuevo);
 nuevo^.dato := t;

 act := l;
 ant := l;
 While Not(l=Nil) And (l^.dato.onro>t.onro) Do
  Begin
   ant := act;
   act := act^.sig;
  End;

 If (act=ant)Then
  l := nuevo
 Else
  ant^.sig := nuevo;
 nuevo^.sig := act;



End;

Procedure generarltrans(l:ltrans; Var lterceros:ltrans);

Var t:trans;
Begin

 While Not(l=Nil) Do
  Begin
   t := l^.dato;

   If Not(t.odni=t.ddni) Then
    Begin
     insertar(lterceros,t);
    End;
  End;
End;

Procedure inicializarv(Var v:vmot);

Var i:integer;
Begin

 For i := 1 To maxmot Do
  Begin
   v[i] := 0;
  End;


End;

Function espar(n:integer):Boolean;
Begin
 If (n Mod 2 = 0 ) Then
  espar := true
 Else espar := false;
End;

Function cantjuniopar(dnro:integer):Boolean;

Var cpar,cimpar:integer;
Begin
 cpar := 0;
 cimpar := 0;
 While Not(dnro=0 ) Do
  Begin
   If (espar(dnro)) Then
    cpar := cpar + 1
   Else cimpar := cimpar + 1;
   dnro := dnro Div 10;
  End;

 cantjuniopar := cpar< cimpar;

End;

Procedure motivosmax(v:vmot;Var maxm:integer);

Var i,cantm:integer;
Begin
 cantm := 0;
 For i:=1 To maxmot Do
  Begin
   If (cantm<v[i])Then
    Begin
     cantm := v[i];
     maxm := i;
    End;
  End;
End;

Procedure leerlista(l:ltrans; Var v:vmot; Var cantjunio:integer);

Var t:trans;
 nroact,maxm:integer;
 montototalt:real;
Begin

 While (l=Nil) Do
  Begin
   t := l^.dato;
   nroact := t.onro;
   montototalt := 0;
   While (nroact=t.onro) Do
    Begin
     montototalt := montototalt + t.monto;
     If (cantjuniopar(t.dnro))
      Then
      cantjunio := cantjuniopar + 1;
     v[t.codm] := v[t.codm] +1 ;
     l := l^.sig;
     t := l^.dato;

    End;
   write(montototalt.' de la cuenta ', nroact);

  End;
End;


Var l,lter:ltrans;
 vmotivos:vmot;
 cantjunio:integer;



Begin
 l := Nil;
 lter := Nil;
 cantjunio := 0;

 cargarlista(l) ;
 //sedispone
 generarltrans(l,lter);
 inicializarv(vmotivos);
 leerlista(lter,vmotivos,cantjunio);
 motivosmax(vmotivos,maxm);
 WriteLn(cantjunio);
 WriteLn('motivo con mas transferencia ', v[maxm]);

End.
