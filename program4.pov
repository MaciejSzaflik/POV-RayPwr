#include "colors.inc" /* w³¹czenie pliku zawieraj¹cego */
 /* predefiniowane elementy sceny */           
#declare Count = 1;
background { color Feldspar} /* okreœlenie koloru t³a */
camera /* okreœlenie pozycji obserwatora */
 /* i sposobu patrzenia na obiekt */
{
 location <4, 20, -30>
 look_at <0, 0,20>
}
    
      
#declare ring = union
{
    #declare Number = 64;
    #declare Ang = 360/Number;
    /* Deklaracja i ustawienie wartoœci liczby przebiegów pêtli*/
    #while (Count < Number+1) /* Sprawdzenie warunku koñca pêtli*/
      sphere /* definicja obiektu */
        {
         <-2, 1, 0>  0.5
         texture{pigment { color Violet }} 
         scale <1,2.5,1>
         rotate <0,Ang*Count,0>
        }  
        #declare Count= Count+1;
    #end 
}
#declare numberRows = 5;
#declare X = 119;
#declare CountX = 0;
#while (CountX < X+1) 
        #declare mod3 = mod(CountX,numberRows);
        object 
        {
            ring translate <mod3*3,1,floor(CountX/numberRows)*3>   
        }  
        #declare CountX = CountX+1; 
 #end 




plane 
{
 <0, -1, 0>, 1 
 pigment {checker color Pink,color White }

}

light_source { <-23, 10, -3> color Magenta}  
light_source { <0, 10, -30> color White}   
light_source { <10, 10, -30>
 color Pink  }  