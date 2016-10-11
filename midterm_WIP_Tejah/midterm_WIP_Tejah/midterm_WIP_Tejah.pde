String state ="scene1";
PImage img1;
PImage img2;
PImage img3;
PImage img4;
int x=300;
int y =200;
int t= 50;

void setup () {
  size (800, 800);
  img1 = loadImage ("pump1.gif");
  img2 = loadImage ("pump3.png");
  img3 = loadImage ("bat.png");
  img4 = loadImage ("skull.gif");
  cursor (img4, 20, 20);
}

void draw () {
  if  (state == "scene1") { // if state is scene 1, print the following
    scene1();
  }
  if(state == "scene2") {
    scene2();
  }
  else if (state == "scene3") {
    scene3 ();
  }
if (state == "scene4") {
  scene4();
}
  }

void scene1() {
  background (0); 
  fill(170, 0, 170);
  rect (width/6, 450, 200, 100);
  rect (460, 450, 200, 100);
  if (mouseX>width/6 && mouseX < width/6 + 200 && mouseY> 450 && mouseY<450 + 100) { //rectangle rollover hightlight 
    fill (0, 0, 255);
    rect (width/6, 450, 200, 100);
  }
  if (mouseX>460 && mouseX < 460 +200 && mouseY> 450 && mouseY <450 +100) { // rectangle rollover highlight 
    fill (0, 0, 255);
    rect (460, 450, 200, 100);
  }

  if (mousePressed) { //scene 1 
    if (mouseX>width/6 && mouseX < width/6 + 200 && mouseY> 450 && mouseY<450 + 100) { // if you press the left rectangle in scene 1 go to state 2 
      println("mouse is over left rectangle");
      state = "scene2";
    }
    if (mouseX>460 && mouseX < 460 +200 && mouseY> 450 && mouseY <450 +100) { // state 2 
      println("mouse is over right rectangle");
      state = "scene3";
    }
  }
}

void scene2() {
    background (186, 85, 211);
    textSize (50);
    fill (0);
    text ("Decorate your own pumpkin!", 60, 150); 
    strokeWeight (10);
    stroke(0);
    fill (0);
    img2.resize (0, 400);
    image (img2, 130, 325);
    fill (139, 0, 139);
    rect (80, 250, 200, 100);
    rect (500, 250, 200, 100);
    fill (0);
 
  if (mousePressed) { //if you press the left rect go to state 4 
    if (mouseX>80 && mouseX<280 && mouseY < 350 && mouseY >250) {
      state = "scene4";
    } else if (mouseX>500 && mouseX< 800 && mouseY < 350 && mouseY>250) { // else if you press the right triangle go to scene 5
      state = "scene5";
    }
  }
}

void scene3() {
    background (176, 65, 65);
    textSize (50);
    fill (0);
    text ("Decorate your own bat!", 115, 150); 
    strokeWeight (10);
    stroke(0);
    fill (0);
    image (img3, 100, 300);
    img3.resize (10, 10);
    fill (0);
    rect (80, 625, 200, 100);
    rect (530, 625, 200, 100);
    fill (0);

  if (mousePressed) { // if you press the left rect in scene 3 go to scene 7 
    if (mouseX>80 && mouseX<280 && mouseY>625 && mouseY< 725) {
      state = "scene7";
    } else if (mouseX>530 && mouseX<730 && mouseY> 625 && mouseY<725) { // if you press the right rect in scene 3 go to scene 8 
      state = "scene8";
    }
  }
}
 void scene4() {
    background (0, 50, 150);
    img2.resize (0, 400);
    image (img2, 130, 325);
    textSize (50);
    strokeWeight (10);
    text ("Drag the eyes to the pumpkin!", 30, 150);

 }
 