String node = "start";
PFont f;
PImage back1, back2, back3, back4, back5, back6, back7, back8, back9;
import processing.sound.*;
SoundFile file;


void setup(){
  background(255);
  size(600,600);
  f= createFont("Georgia", 13, true);
  
  back1 = loadImage("Airport.jpg");
  back2 = loadImage("Go-to-counter.jpg");
  back3 = loadImage("Overweight.jpg");
  back4 = loadImage("Sorry.jpg");
  back5= loadImage("Congrats,-plain-aboarding.jpg");
  back6= loadImage("Chack-in-the-machine.jpg");
  back7= loadImage("You-can-travel-now.jpg");
  
  file = new SoundFile(this, "Airport.mp3");
  file.play();
  file.loop();
 
}
  

void draw(){
  
  if(node == "start"){
  node = "airport";
  textAlign(CENTER);
  textFont(f, 30);
  background(back1);
  noStroke();
  fill(255, 200);
  rect(50, 50, 500, 500, 20);
  fill(0);
  text("You get to the airport.", width/2, 200);
  text("A) You check-in on the counter", width/2, 250);
  text("B) You do a self check-in", width/2, 300);
}
}


void keyPressed(){
  
  //You go to check your baggage on the counter
  if(node == "overweight"){  
      if(key == 'a'){
      node="again";
      background(back2);
      noStroke();
      fill(255, 200);
      rect(50, 50, 500, 500, 20);
      fill(0);
      text("Now your baggage provably have the", width/2, 200);
      text("the right weight", width/2, 250);
      text("Press ENTER to take your baggage", width/2, 300);
      text("to the counter again ", width/2, 350);
}}
  if(node == "overweight"){  
      if(key == 'b'){
      node="again b";
      background(back2);
      noStroke();
      fill(255, 200);
      rect(50, 50, 500, 500, 20);
      fill(0);
      text("Now your baggage provably have the", width/2, 200);
      text("the right weight", width/2, 250);
      text("Press ENTER to take your baggage", width/2, 300);
      text("to the counter again ", width/2, 350);
}}
   if(node == "again b"){
    if (key == ENTER){
    node = "finish";
    background(255);
    text("All set!", width/2, 200);
    text("Now you are ready to pass", width/2, 250);
    text("border protection", width/2, 300);
    text("press ENTER to play again", width/2, 400);
  }}  
      if(node == "finish"){
        if(key== ENTER){
        background(255);
         node = "start";
         }}

   if(node == "again"){
  if (key == ENTER){
    node = "passport";
    background(back3);
      noStroke();
      fill(255, 200);
      rect(50, 50, 500, 500, 20);
      fill(0);
    text("Yo go to the counter and the ", width/2, 200);
    text("officer ask for your passport, but ", width/2, 250);
    text("you don't have it with you", width/2, 300);
    text("A) You decide to go back home", width/2, 350);
    text("B) You start to search it in all", width/2, 400);
    text("your baggage", width/2, 450);
  }}
  if(node == "passport"){
    if (key == 'a'){
    node = "no travel";
    background(back4);
     noStroke();
     fill(255, 200);
     rect(50, 50, 500, 500, 20);
     fill(0);
    text("I'm sorry,", width/2, 200);
    text("you won't be able to travel today", width/2, 250);
    text("press ENTER to play again", width/2, 400);
  }}
  
      if(node == "no travel"){
        if(key== ENTER){
        background(255);
         node = "start";
         }}
  
  if(node == "passport"){
    if (key == 'b'){
    node = "run";
    background(back5);
    noStroke();
    fill(255, 200);
    rect(50, 50, 500, 500, 20);
    fill(0);
    text("You just found it!", width/2, 200);
    text("You better run, ", width/2, 250);
    text("your flight is boarding", width/2, 300);
    text("press ENTER to play again", width/2, 450);
  }}
        if(node == "run"){
        if(key== ENTER){
        background(255);
         node = "start";
         }}

  if(node == "airport"){  
      if(key == 'a'){
      node="overweight";
      background(back2);
      noStroke();
      fill(255, 200);
      rect(50, 50, 500, 500, 20);
      fill(0);
      text("You go to check your baggage", width/2, 200);
      text("and it is overweight", width/2, 250);
      text("A) You trash some of the food", width/2, 300);
      text("that is in your bag.", width/2, 350);
      text("B) You put some stuff on your", width/2, 400);
      text("carry-on", width/2, 450);
}
}
  
  
   if(node == "self"){
     if(key == 'a'){
      node="all set";
       background(back5);
      noStroke();
      fill(255, 200);
      rect(50, 50, 500, 500, 20);
      fill(0);
       text("Done!", width/2, 200);
       text("Now you are ready.", width/2, 250);
       text("to pass border pretection.", width/2, 300);
       text("Press ENTER to play again", width/2, 400);
}
}
     if(node == "all set"){
        if(key== ENTER){
        background(255);
         node = "start";
}
}

   if(node== "one more time"){
    if(key == 'b'){
      node= "end2";
      background(back7);
      noStroke();
      fill(255, 200);
      rect(50, 50, 500, 500, 20);
      fill(0);
       text("Done!", width/2, 200);
       text("Now you are ready", width/2, 250);
       text("to pass border pretection.", width/2, 300);
       text("Press ENTER to play again", width/2, 400);
   }}

    if(node == "end2"){
  if(key== ENTER){
  background(255);
  node = "start";
}}


    if(node == "self"){
     if(key == 'b'){
      node="one more time";
      background(back2);
      noStroke();
      fill(255, 200);
      rect(50, 50, 500, 500, 20);
      fill(0);
      text("You go to check your baggage", width/2, 200);
      text("and it is overweight", width/2, 250);
      text("A) You trash some of the food", width/2, 300);
      text("that is in your bag.", width/2, 350);
      text("B) You put some stufs on your", width/2, 400);
      text("carry-on", width/2, 450);
    }
}  



   if(node == "airport"){
     if(key == 'b'){
      node="self";
      background(back6);
      noStroke();
      fill(255, 200);
      rect(50, 50, 500, 500, 20);
      fill(0);
       text("You go to the self check-in machine", width/2, 200);
       text("but it is not working", width/2, 250);
       text("A) You go to another machine", width/2, 300);
       text("B) You go to the counter", width/2, 350);
}
}

   
 if(node== "one more time"){
    if(key == 'a'){
      node= "end1";
      background(back7);
      noStroke();
      fill(255, 200);
      rect(50, 50, 500, 500, 20);
      fill(0);
       text("Done!", width/2, 200);
       text("Now you are ready", width/2, 250);
       text("to pass border pretection.", width/2, 300);
       text("Press ENTER to play again", width/2, 400);
}
}

  if(node == "end1"){
  if(key== ENTER){
  background(255);
  node = "start";
}
}


}