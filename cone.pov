#include "colors.inc" /* w³¹czenie pliku zawieraj¹cego */
 /* predefiniowane elementy sceny */           
#declare Count = 1;
background { color Feldspar} /* okreœlenie koloru t³a */
camera /* okreœlenie pozycji obserwatora */
 /* i sposobu patrzenia na obiekt */
{
 location <10, 8, -7>
 look_at <-4, 0,7>
}
cone /* definicja obiektu */
{
 <0, 0, 0>  1.5
 <0, 3, 0>, 0
 texture{pigment { color Green }}

}     
      
  
#declare Number = 10;
/* Deklaracja i ustawienie wartoœci liczby przebiegów pêtli*/
#while (Count < Number+1) /* Sprawdzenie warunku koñca pêtli*/
  cone /* definicja obiektu */
    {
     <0, 0, 0>  1.5
     <0, 3, 0>, 0
     texture{pigment { color Red }}    
     translate <0, 0, 2*Count>
    
    } 
    #declare Count= Count+1; /* Zwiêkszenie licznika petli*/  
#end
 



plane /* nazwa obiektu */
{
 <0, -1, 0>, 1 /* parametry opisuj¹ce p³aszczyznê */
 pigment {checker color Yellow,color Brown }
/*(czerwono - niebieska szachownica) */
}

light_source { <3, 3, -3> color White} /* definicja oœwietlenia sceny */ 