int x,y;
int r,g,b;

void setup(){
  size(600, 600);
  x = 300;
  y= 50;
}

void draw(){
  //RGB
    r= (int) random (255);
    g= (int) random (255);
    b= (int) random (255);
  
  //Draw the hat
    background (255);
 
  //Top of hat
      pushStyle();
        fill (0,0,0);
        noStroke();
            ellipse(300, 250, 230, 230);
      popStyle();

  //Hair
      pushStyle();
        fill (0,0,0);
        noStroke();
            ellipse(178, 305, 30, 45);
            ellipse(422, 305, 30, 45);
      popStyle();
  
  //Ears
        pushStyle();
        fill (255);
        strokeWeight(5);
            ellipse(182, 330, 20, 20);
            ellipse(418, 330, 20, 20);
      popStyle();
  
  
  //Face
    pushStyle();
      strokeWeight(10);
      ellipse(300, 310, 230, 230);
    popStyle();
    
  //Base of hat    
    pushStyle();
        fill (0,0,0);
        noStroke();
             rect( 150, 250, 300, 40, 10);
             rect(201, 190, 198, 80);
     popStyle();
     
//Blank space
     pushStyle();
        fill (255);
        noStroke();
             rect( 150, 240, 300, 10);
     popStyle();
     
  //Eyes
      pushStyle();
        fill (0,0,0);
        noStroke();
            ellipse(250, 340, 20, 20);
            ellipse(350, 340, 20, 20);
      popStyle();
      
  //Eyebrows
     pushStyle();
        fill (0,0,0);
        noStroke();
             rect( 233, 310, 25, 10, 5);
             rect( 342, 310, 25, 10, 5);
      popStyle();
      
      
  //Moustache  
    pushStyle();
        fill (0,0,0);
        noStroke();
             rect( 285, 360, 32, 30, 5);
     popStyle();
     
     
     
    
   
}