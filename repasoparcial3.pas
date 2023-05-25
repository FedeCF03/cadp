
Program repasoparcial3;
{Una remisería dispone de información acerca de los viajes realizados durante el mes de mayo de
2018. De cada viaje se conoce: número de viaje, código de auto, dirección de origen, dirección
de destino y kilómetros recorridos durante el viaje. Esta información se encuentra ordenada por
código de auto y para un mismo código de auto pueden existir 1 o más viajes. Se pide:
a. Informar los dos códigos de auto que más kilómetros recorrieron.
b. Generar una lista nueva con los viajes de más de 5 kilómetros recorridos, ordenada por
número de viaje
}

Type 
 maskilometro = Record
  auto:integer;
  auto2:integer;
  km:integer;
  km2:integer;
 End;

 viaje = Record
  nro:integer;
  codauto:integer;
  direco:string;
  direcd:string;
  km:integer;
 End;

 lista = ^nodo;

 nodo = Record

  dato:viaje;
  sig:lista;
 End;

Procedure iordenado( Var l:lista;v:viaje);

Var nuevo,ant,act:lista;
Begin
 new(nuevo);
 nuevo^.dato := v;
 ant := l;
 act := l;
 While Not(act=Nil) And (v.nro>l^.dato.nro) Do
  Begin

   ant := act;
   act := act^.sig;
  End;

 If (act=ant) Then
  l:nuevo
    Else
     ant^.sig := nuevo;
 nuevo^.sig := act;

End;
Procedure cargarLista(Var L:lista;dato:viaje);

Var 
Begin
 If (viaje.km>5) Then

  Begin
   insertarOrdenado(L, dato);
  End;
End;

Procedure maxkm(Var km:maskilometro;kmtotal:integer; codauto:integer);
Begin

 If (kmtotal > km.km)Then
  Begin
   km.km2 := km.km;
   km.auto2 := km.auto;

   km.km := kmtotal;
   km.auto := codauto;
  End
 Else If (kmtotal > km.km2)
       Then
       Begin
        km.km2 := kmtotal;
        km.auto2 := codauto;
       End;
End;

Procedure recorrerlista(l:lista;Var l2:lista);



Var autoact,auto,auto2,km,km2,kmtotal:integer;
 km:maskilometro;
Begin
 km.km := 0;
 km.km2 := 0;
 While Not(l=Nil) Do
  Begin
   autoact := l^.dato.codauto;
   kmtotal := 0;
   While (autoact=l^.dato.codauto) And Not(l=Nil)  Do
    Begin
     cargarLista(l2,l^.dato);
     kmtotal := l^.dato.km+kmtotal;
     l^.sig;
    End;
   maxkm(km,kmtotal,autoact);

  End;
End;


Var l,l2:lista;

Begin
 l := Nil;
 l2 := Nil;

 recorrerlista(l,l2);





End.
