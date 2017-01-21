#include "colors.inc" /* w��czenie pliku zawieraj�cego */
 /* predefiniowane elementy sceny */           
#declare Count = 1;
background { color Feldspar} /* okre�lenie koloru t�a */
camera /* okre�lenie pozycji obserwatora */
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
/* Deklaracja i ustawienie warto�ci liczby przebieg�w p�tli*/
#while (Count < Number+1) /* Sprawdzenie warunku ko�ca p�tli*/
  cone /* definicja obiektu */
    {
     <0, 0, 0>  1.5
     <0, 3, 0>, 0
     texture{pigment { color Red }}    
     translate <0, 0, 2*Count>
    
    } 
    #declare Count= Count+1; /* Zwi�kszenie licznika petli*/  
#end
 



plane /* nazwa obiektu */
{
 <0, -1, 0>, 1 /* parametry opisuj�ce p�aszczyzn� */
 pigment {checker color Yellow,color Brown }
/*(czerwono - niebieska szachownica) */
}

light_source { <3, 3, -3> color White} /* definicja o�wietlenia sceny */ 