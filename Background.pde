class Background{
  color col;
  PVector position;
  PVector velocity;
  
  Background(){

    velocity = new PVector (int(random (0)), (random (-5,-8)));
    
    position = new PVector (int(random(width)), int(random(height)));
  }
  
  void drawBackground(){
    noStroke();
    fill(col);
    
    triangle(position.x-30, position.y+50, position.x, position.y,position.x+30, position.y+50);
     col = color (random(255), random(255), random(255));

    
  }
  
  void moveTriangles(){
    position.add(velocity);
    
    if(position.y<0 && velocity.y<height){
    position.y = height-10;
    position.add(velocity);
    }
    
  }
  
}