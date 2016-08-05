String node = "start";
PFont f;

void setup(){
  background(255);
  size(600,600);
  f= createFont("Georgia", 13, true);
  
}

void draw(){
  
  if(node == "start"){
  node = "airport";
  textAlign(CENTER);
  textFont(f, 30);
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
      background(255);
      text("Now your baggage provably have the", width/2, 200);
      text("the right weight", width/2, 250);
      text("Press ENTER to take your baggage", width/2, 300);
      text("to the counter again ", width/2, 350);
}}
  if(node == "overweight"){  
      if(key == 'b'){
      node="again b";
      background(255);
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
    text("press ESC to exit", width/2, 400);
  }}

   if(node == "again"){
  if (key == ENTER){
    node = "passport";
    background(255);
    text("Yo go to the counter and the officer ask for", width/2, 200);
    text("your passport, but you realize that", width/2, 250);
    text("you don't have it with you ", width/2, 300);
    text("A) You decide to go back home", width/2, 350);
    text("B) You start to search it in all your baggage", width/2, 400);
  }}
  if(node == "passport"){
    if (key == 'a'){
    node = "no travel";
    background(255);
    text("I'm sorry,", width/2, 200);
    text("you won't be able to travel today", width/2, 250);
    text("press ESC to exit", width/2, 400);
  }}
  if(node == "passport"){
    if (key == 'b'){
    node = "run";
    background(255);
    text("You just found it!", width/2, 200);
    text("You better run, your flight is boarding", width/2, 250);
    text("press ESC to exit", width/2, 400);
  }}

  if(node == "airport"){  
      if(key == 'a'){
      node="overweight";
      background(255);
      text("You go to check your baggage", width/2, 200);
      text("and it is overweight", width/2, 250);
      text("A) You trash some of the food", width/2, 300);
      text("that is in your bag.", width/2, 350);
      text("B) You put some stuff on your carry-on", width/2, 400);
}
}


  
  
   if(node == "airport"){
     if(key == 'b'){
      node="self";
       background(255);
       text("You go to the self check-in machine", width/2, 200);
       text("but it is not working", width/2, 250);
       text("A) You go to another machine", width/2, 300);
       text("B) You go to the counter", width/2, 350);
}
}

   if(node == "self"){
     if(key == 'a'){
      node="all set";
       background(255);
       text("Done!", width/2, 200);
       text("Now you are ready.", width/2, 250);
       text("to pass border pretection.", width/2, 300);
       text("Press ESC to exit", width/2, 400);
}
}
     if(node == "self"){
     if(key == 'b'){
      node="one more time";
      background(255);
      text("You go to check your baggage", width/2, 200);
      text("and it is overweight", width/2, 250);
      text("A) You trash some of the food", width/2, 300);
      text("that is in your bag.", width/2, 350);
      text("B) You put some stufs on your carry-on", width/2, 400);
}
}
    if(node== "one more time"){
    if(key == 'a'){
      node= "end1";
      background(255);
       text("Done!", width/2, 200);
       text("Now you are ready", width/2, 250);
       text("to pass border pretection.", width/2, 300);
       text("Press ESC to exit", width/2, 400);
}
}

  //This code is alterating other codes
    //}else if(key == 'b'){
    //  node= "final";
    //   background(255);
    //   text("Done!", width/2, 200);
    //   text("Now you are ready.", width/2, 250);
    //   text("to pass border pretection.", width/2, 300);
    //   text("Press ESC to exit", width/2, 400);
    //}
    
    //This code is alterating other codes (version 2 of previous code, it doesn't work either)
    //if(node == "one more time"){
    // if(key == 'b'){
    //   node= "final";
    //   background(255);
    //   text("Done!", width/2, 200);
    //   text("Now you are ready.", width/2, 250);
    //   text("to pass border pretection.", width/2, 300);
    //   text("Press ESC to exit", width/2, 400);
    //}}

}