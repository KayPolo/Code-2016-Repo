// CODE MIDTERM
// Rotoscoping
//
// This sketch loads the assigned frames and plays them back
// Add your own draw code
// Then it saves out the rendered frames
//
// DON'T FORGET TO CHANGE THE VALUE OF THE STUDENTNAME VARIABLE TO YOUR NAME!!

import java.io.File;

File[] tempfiles;
ArrayList<File> files;
PImage image;
String currentFilename;

// EDIT THIS LINE WITH YOUR NAME!
String studentName = "KARLA POLO";

//my code declare
Background[] back;
int num= 300;

void setup() {
  files = new ArrayList<File>();

  // get list of files from directory
  File dir = new File(sketchPath() + "/rawFrames");
  tempfiles = dir.listFiles();

  // filter out files that don't end in .png
  for (int i = 0; i < tempfiles.length; i++) {
    String path = tempfiles[i].getAbsolutePath();
    if (path.toLowerCase().endsWith(".png")) {
      files.add(tempfiles[i]);
    }
  }

  // Resize the canvas to full-HD 1080p glory
  //size(960, 540);
  //pixelDensity(2);
  
  // if that doesn't work, comment it out and uncomment this instead:
  size(1920, 1080);
  pixelDensity(1);
  
    //my void setup settings
   back = new Background[num];
    
    for(int i = 0; i<num; i++){
    back[i] = new Background();
  }
}

void draw() {
  // DO NOT ALTER THE LINE BELOW
  prepare();

  // BEGIN ADDING YOUR CODE HERE -----
  
    smooth();  
  noStroke();
  fill(random(255), random(255), random(255));
   
    for(int i = 0; i<num; i++){
    back[i].drawBackground();
    back[i].moveTriangles();
    }


     if(frameCount ==1 || frameCount == 5|| frameCount == 10) {
    fill (random(255), random(255), random(255), 130);
    triangle(width/2, height, 0, 0, width, 0);
  } else {
    fill (random(255), random(255), random(255), 100);
    triangle(width/2, 0, 0, height, width, height);
  }
   
  
  if(frameCount ==3 || frameCount == 7|| frameCount == 12) {
    fill(240,0,220,120);
    triangle(width/2, height*0.9, width/6, height/5, width*0.82, height/5);
  } else {
    
    fill(240,0,220,150);
    triangle(width/2, height/5, width/6, height*0.9, width*0.82, height*0.9);
  }
  

  fill(0, random(255), random(255),200);
  triangle(width/2, height/2.3, width/3, height*0.8, width*0.65, height*0.8);

  // STOP ADDING YOUR CODE HERE -----

  // DO NOT ALTER THE LINES BELOW
  if (frameCount < files.size()) { 
    export();
  } else {
    exit();
  }
}

// DO NOT ALTER THIS FUNCTION!!
void prepare() {
  String path = files.get(frameCount-1).getAbsolutePath();
  currentFilename = files.get(frameCount-1).getName();

  // Load current file into our PImage variable
  tint(255, 255);
  image = loadImage(path);
  image(image, 0, 0, width, height);
}

// DO NOT ALTER THIS FUNCTION!!
void export() {
  // saves frame without watermark
  saveFrame(sketchPath() + "/outFrames/edited_" + currentFilename);

  int sidePadding = 125;
  int bottomPadding = 50;
  
  textAlign(LEFT);
  textSize(32);
  fill(255);
  text(studentName, sidePadding + 1, height - bottomPadding + 1);
  fill(0);
  text(studentName, sidePadding, height - bottomPadding);

  // saves frame with watermark
  saveFrame(sketchPath() + "/outFrames/watermarked_" + currentFilename);
}