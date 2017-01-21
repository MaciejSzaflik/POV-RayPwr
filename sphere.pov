#include "colors.inc" /* w³¹czenie pliku zawieraj¹cego */
 /* predefiniowane elementy sceny */
background { color Feldspar} /* okreœlenie koloru t³a */
camera /* okreœlenie pozycji obserwatora */
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
 <0, -1, 0>, 4 /* parametry opisuj¹ce p³aszczyznê */
 pigment {checker color Gray,color White }
/*(czerwono - niebieska szachownica) */
}

light_source { <7.5, 20, -3> color Green} /* definicja oœwietlenia sceny */ 
light_source { <-7.5, 20, -3> color Red} /* definicja oœwietlenia sceny */  
light_source { <0, 10, -3> color Blue} /* definicja oœwietlenia sceny */
light_source { <0, 10, 10> color Yellow} /* definicja oœwietlenia sceny */