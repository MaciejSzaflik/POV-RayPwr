  #include "colors.inc"
  
      
  camera 
  {   
    
      
    location <0, 30, -40>
    look_at  <0, 0,  -10> 
    
  }   
  
 
  plane                                                                    
  {
    <0, 1, 0>, -5                                                        
   pigment {checker color Gold, color Copper }        
  }   
  
    
  
  #declare Number = 25;                        // The number equals the number of animation frames                         
  
  #declare Ang = 720/Number;                   // The rotation angle per frame 
  
  #declare a = 10; 
  
  #declare dumpNum = 1/8;
    
  sphere 
  {
    <0, 0, 0>, 5
    texture { pigment { color Silver }  }  
   /* #declare value = clock*dumpNum;   
    #declare sin2t = 1 + sin(value)*sin(value);
    #declare xPOs = cos(value)*a*1.41/sin2t; 
    #declare yPOs = xPOs* sin(value);
    translate <yPOs, 2, xPOs>  */                     // Lift and move sphere      
    #if( clock < 13)         
        translate <0, 0, 10>
        rotate <0, clock*Ang, 0>
    #end                               
    #if( clock >= 13) 
        translate <0, 0, -10>  
        rotate <0, -clock*Ang, 0>
        translate <0, 0, 20> 
    #end                     
    
                       // Rotation around y axis by an angle resulting from the product 
                                               // values of clock animation, and the angle of rotation
                                               // per one frame
    
  }
    
             
  
 light_source { <0, 50, -30> color White} 
 light_source { <0, 50, -30> color White} 