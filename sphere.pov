#include "colors.inc" /* w��czenie pliku zawieraj�cego */
 /* predefiniowane elementy sceny */
background { color Feldspar} /* okre�lenie koloru t�a */
camera /* okre�lenie pozycji obserwatora */
 /* i sposobu patrzenia na obiekt */
{
 location <0, 3.2, -1>
 look_at <0, -1, 2>
}
sphere /* definicja obiektu */
{
 <0, 1, 2>, 0.5
 texture{pigment { color White }}
}
sphere /* definicja obiektu */
{
 <0, -1.5, 2>, 0.2
 texture{pigment { color Blue }}
} 
sphere /* definicja obiektu */
{
 <0, -2.2, 2>, 0.4
 texture{pigment { color Blue }}
}
sphere /* definicja obiektu */
{
 <0, -3.5, 2>, 0.8
 texture{pigment { color Blue }}
}
sphere /* definicja obiektu */
{
 <-2.5, 1, 2>, 0.2
 texture{pigment { color Gray }}
} 

plane /* nazwa obiektu */
{
 <0, -1, 0>, 4 /* parametry opisuj�ce p�aszczyzn� */
 pigment {checker color Gray,color White }
/*(czerwono - niebieska szachownica) */
}

light_source { <7.5, 20, -3> color Green} /* definicja o�wietlenia sceny */ 
light_source { <-7.5, 20, -3> color Red} /* definicja o�wietlenia sceny */  
light_source { <0, 10, -3> color Blue} /* definicja o�wietlenia sceny */
light_source { <0, 10, 10> color Yellow} /* definicja o�wietlenia sceny */