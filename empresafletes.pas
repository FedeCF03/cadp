
Program parcial;

Const maxc = 255;

Type 
 rango_codc = [200..maxc];
 servicio = Record
  codc:rango_codc;
  onprovincia:string;
  dnprovincia:string;
  ckm:real;
  dnic:integer;
 End;

 lista = ^nodo;

 nodo = Record
  dato:servicio;
  sig:lista;
 End;

 ccamiones = array[rango_codc] Of real;

Procedure inicializarv(Var v:ccamiones);

Var i:integer;
Begin

 For i:=200 To maxc Do
  Begin
   v[i] := 0;
  End;
End;

Function dniimpar(dni:integer):boolean;

Var  digito:integer;
 cumple:boolean;
Begin
 cumple := true;

 While Not(dni=0) And(cumple) Do
  Begin

   digito := dni Mod 10;
   dni := dni Div 10;

   If (digito Mod 2 =0 ) Then
    cumple = false;


  End;

 dniimpar := cumple;
End;


Procedure maxviaj(Var maxprov:String; Var maxviajes:integer; viajes:integer; prov:String;)
Begin
 If (maxviajes<viajes) Then
  Begin
   maxprov := prov;
   maxviajes := viajes;
  End;
End;

Procedure camioneskm(Var cantidadecam:integer;  v:ccamiones)

Var i:integer;
Begin

 For i:=200 To maxc 
  Do
  Begin

   If (v[i]>5000) Then
    cantidadecam := cantidadecam + 1;
  End;

End;


Procedure leerlista(l:lista;Var cantidadecam:integer; Var nprovincia:String;Var cdnimpar:integer);

Var vcamiones:ccamiones;
 maxviajes,viajes:integer;
 provinact:String;
Begin
 inicializarv(vcamiones);
 cantidadecam := 0;
 cdnimpar := 0;
 maxviaje := 0;
 While Not(l=Nil) Do
  Begin
   provinact := l^.dato.onprovincia;
   viajes := 0;
   While (provinact=l^.dato.onprovincia) Do
    Begin

     vcamiones[l^.dato.codc] := vcamiones[l^.dato.codc] + l^.dato.ckm;
     viajes := viajes +1 ;

     If ((l^.dato.onprovincia=l^.dato.dnprovincia) And (dniimpar(l^.dato.dnic)))

      Then
      cdnimpar := cdnimpar +1 ;

     l := l^.sig;
    End;

   maxviaj(nprovincia,maxviajes,viajes,provinact);




  End;

 camioneskm(cantidadecam,vcamiones);

End;
