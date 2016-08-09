void setup(){
  size (500,500);
  
  
}

void draw(){
  background(0);
  smooth();  
  noStroke();
  fill(random(255), random(255), random(255));
  for(int y=0; y<=height-0; y+=15){
    for(int x=0; x<= width-0; x+=15){
      ellipse(x,y,10,10);
    
  }}
  
  fill(255,248,0);
  triangle(width/2, 0, 0, 500, 500, 500);
  
  fill(140,0,120);
  triangle(width/2, 150, 100, 450, 400, 450);
  
  fill(0,225,30);
  triangle(width/2, 300, 200, 400, 300, 400);

  

  
  fill(255);
  
}