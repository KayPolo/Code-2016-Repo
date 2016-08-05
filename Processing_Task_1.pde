int state = 0;
PFont f;

void setup(){
  background(255);
  size(600,600);
  f= createFont("Georgia", 13, true);
  
}

void draw(){
  
if (state == 0){
  textAlign(CENTER);
  textFont(f, 30);
  fill(0);
  text("You get to the airport.", width/2, 200);
  text("A) You check-in on the counter", width/2, 250);
  text("B) You do a self check-in", width/2, 300);
  state=1;
}
}


void keyPressed(){


   if(key == ENTER){
    if (state == 4){
    background(255);
    text("Once in the counter the officer ask you for", width/2, 200);
    text("your passport,but you realize that", width/2, 250);
    text("you don't have it with you ", width/2, 300);
    text("A) You decide to go back home", width/2, 350);
    text("B) You start to search it in all your baggage", width/2, 400);
    state= 10;
  }}

  if(state == 2){
     if (key == 'b'){
      background(255);
      text("It seems that your baggage have", width/2, 200);
      text("a perfect weight", width/2, 250);
      text("Press ENTER to take your baggage", width/2, 300);
      text("to the counter again ", width/2, 350);
      state = 5;
}}
    

  if(state == 1){  
      if(key == 'a'){
      background(255);
      text("You go to check your baggage", width/2, 200);
      text("and it is overweight", width/2, 250);
      text("A) You trash some of the food", width/2, 300);
      text("that is in your bag.", width/2, 350);
      text("B) You put some stuff on your carry-on", width/2, 400);
      state = 2;
}}
if(state == 1){
       if(key == 'b'){
       background(255);
       text("You go to the self check-in machine", width/2, 200);
       text("but it is not working", width/2, 250);
       text("A) You go to another machine", width/2, 300);
       text("B) You go to the counter", width/2, 350);
       state = 3;
      }}
      
      
    if (state == 4){
      if(key == ENTER){
      background(255);
      text("CONGRATULATIONS", width/2, 200);
      text("Now you are ready to travel!", width/2, 250);
      state= 8;
}}

//This is an alternative to the issue.
//If the lines that are having problem get fixed, lock this block
  if(key == ENTER){
  background(255);
  if (state == 5){
    text("Once in the counter the officer ask you for", width/2, 200);
    text("your passport,but you realize that", width/2, 250);
    text("you don't have it with you ", width/2, 300);
    text("I looks like you wont be able to travel today", width/2, 400);
    state= 9;
  }}
 
 // This line doesn't have any issue, but it is doesn't make any sensse
 //if the to blocks after this one does't work.
 

    
//This line is having some issue
  //When this line is been displayed the previoud line doesn't show up       
//You go to check your baggage on the counter
  //if(state == 2){  
  //    if(key == 'a'){
  //    background(255);
  //    text("Now your baggage provably have the", width/2, 200);
  //    text("the right weight", width/2, 250);
  //    text("Press ENTER to take your baggage", width/2, 300);
  //    text("to the counter again ", width/2, 350);
  //    state = 4;
//}}

 //if(key == 'a'){
 // background(255);
 // if (state == 5){
 //   text("I'm sorry,", width/2, 200);
 //   text("you won't be able to travel today", width/2, 250);
 //   text("If you want to start over and try ", width/2, 300);
 //   text("to make other decisions, press S", width/2, 400);
 //   state= 6;
 //}}


 //if(key == 's'){
 // background(255);
 // if (state == 6){
 //   text("You get to the airport.", width/2, 200);
 //   text("A) You check-in on the counter", width/2, 250);
 //   text("B) You do a self check-in", width/2, 300);
 //   state= 1;
 //}}

}