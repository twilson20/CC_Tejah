// Title -  Pumpkin CYOA 
// A simple CYOA adevnture game. Click your choices, and in the end you
//have your final creation!

//Images and Music Credit 
// all mouth images came from here 3dpcase.sculpteo.com
//pumpkin image on main screen came from here http://2.bp.blogspot.com/-Jmgq9LEKBSk/VCi2Mkd3KTI/AAAAAAAAFpc/owu404xpC_A/s1600/pumpkin.png
// background music came from here https://www.youtube.com/watch?v=JxFLOPi-a8w
//the click sound came from here https://www.youtube.com/watch?v=oCUBtBZBkk8
//change fonts 
// add more options
// more randomization - make pumpkin do stuff at the end
//add sound at the end 
// figure out background image 
//make pumpkin talk/ say random sounds with the click of a button? random 
//pumpkin says random things at the end each time ?? 
//array for sounds /pumpkin moves in diff directions, randomly???
// look at other decration games 

import processing.sound.*;
SoundFile music;
SoundFile click;
int y = 0;
float r = 0;
float g = 0;
float b = 0; 

String state = "intro";
PShape eyes1;
PShape eyes2;
PShape eyes3;
PShape right;
PImage pumpkin;
PShape left;
PImage mouth1;//lots of teeth and fangs 
PImage mouth2;//fangs
PImage mouth3;// smile
PImage pump;
PImage tree;
PImage bats;
PImage halloweentree;
PImage squaresmile;
PImage squareteeth;
PImage trianglesmile;
PImage roundteeth;
PImage roundsmile;
PImage cute;
PImage eww;
PImage ugly;
PImage love; 
PImage girl;
// smile
int speed = 1;
float direction = 1;
int x = 307; //315ffangs?

PImage[] images = new PImage [4];

int randomimage = 0;
  
void setup () {
  size (800,800);
  girl = loadImage ("girl.png");
  images [0] = loadImage ("cute.png");
  images [1] = loadImage ("ugly.png");
  images [2] = loadImage ("love.png");
  images [3] = loadImage ("eww.png");
  //speech1.resize (0, 10);
  //image(speech1, 0, 0, 100,100);
  eyes1 = loadShape("eyes1.svg");
  eyes2 = loadShape("eyes2.svg");
  pumpkin = loadImage ("pump3.png");
  eyes3 = loadShape ("eyes3.svg");
  right = loadShape ("right.svg");
  left = loadShape ("left.svg");
  mouth1 =  loadImage ("mouth1.png");
  mouth2 =  loadImage ("mouth2.png");
  mouth3 =  loadImage ("mouth3.png");
  tree = loadImage ("halloweentree.png");
  bats = loadImage ("bats.png");
  pump =loadImage ("pumpkin.png");
  //music = new SoundFile (this,"halloween.mp3");
  //music.play();
  //music.loop();
  //music.amp (1);
  click = new SoundFile (this, "click.mp3");
  click.amp(3);
  squaresmile = loadImage ("squaresmile.PNG");
  squareteeth = loadImage ("squareteeth.PNG");
  roundsmile = loadImage ("roundsmile.PNG");
  roundteeth = loadImage ("roundteeth.PNG");
  trianglesmile = loadImage ("trianglesmile.PNG");

}

void draw () {
  
    if (state == "intro") {
      intro();
    }
    if (state == "scene1") {
    scene1();
    } 
   else if  (state == "scene2") {
   scene2();
}
   else if (state == "scene3") {
      scene3 ();
}
  else if (state == "scene4") {
    scene4();
}
 else  if (state == "scene5"){ 
    scene5();
  } else if (state == "scene6"){
     scene6();
}
else if (state == "scene7"){
    scene7();
}
else if (state =="scene8"){
  scene8();
}
else if (state == "scene9"){
  scene9();
}
else if (state == "scene10"){
  scene10();
}
else if (state == "scene11"){
  scene11();
}
else if (state == "scene12"){
  scene12();
}
else if (state =="scene13"){
  scene13();
}
else if (state == "scene14"){
  scene14();
}
else if (state =="scene15") {
  scene15();
}
else if (state =="scene16") {
  scene16();
}
else if (state =="scene17") {
  scene17();
}
else if (state =="scene19") {
  scene19();
}
println (state);
}
 image(images[randomimages], 400,400, 20, 20);
}

  void intro() {
  background (0,0,170);
  fill(170,0,170);
  stroke (170,0,170);
  rect (300,600,200,100);
  textSize (30);
  fill(0);
  text ("Click To Play",308, 660);
  textSize (50);
  fill(0);
  text ("Decorate Your Own Pumpkin",55, 200);
  pump.resize (0,350);
  image (pump, 220, 230);
  fill (0, 150, 40);
  if (mousePressed) {
      if (mouseX>300 && mouseX< 500 && mouseY>595 && mouseY<700) {
      state = "scene1";
       click.play();
   }
  }
  }
 
  
  void scene1() {
    background(0, 130, 50);
    textSize (40);
    fill(0);
    text("Pick the eyes of your choice", 125, 150);
    shape (eyes1, 100, 400);
    shape (eyes2, 300, 356);
    shape (eyes3, 420, 285,980,1000);
      if (mousePressed) {
        if (mouseX>100 && mouseX<233 && mouseY>400 && mouseY<490) {
          state = "scene2";
          click.play();
    } else if (mouseX>300 && mouseX<500 && mouseY>370 && mouseY<440) {
        state = "scene3";
        click.play();        
    }
     else if  (mouseX>570 && mouseX<750 && mouseY>406 && mouseY<450) {
       state = "scene4";
       click.play();
    }
  }
 }
  
  
 
  void scene2 () {
    background(130,120, 0);
    pumpkin.resize (0,400);
    image (pumpkin, 140, 200);
    shape (eyes1, 325, 330);
    shape (left, 30, 580, 200, 100);
    shape (right,580, 580,200,100);
    textSize (36);
    text ("This is how your pumpkin currently looks",60, 200);
    text ("Back", 140, 600);
    text ("Next",580, 600);
      if (mousePressed) {
      if (mouseX>30 && mouseX<220 && mouseY>585 && mouseY<680) {
        state = "scene1";
        click.play();
      } else if  (mouseX>400 && mouseX<770 && mouseY>585 && mouseY<680) {
        state = "scene5";
        click.play();
      }
     }
  }

  
void scene3() {
  background (150, 60, 80);
   trianglepumpkin ();
    shape (right,580, 580,200,100);
    shape (left, 30, 580, 200, 100);
    textSize (36);
    text ("This is how your pumpkin currently looks",60, 200);
    text ("Back", 140, 600);
    text ("Next",580, 600);
      if (mousePressed) {
      if (mouseX>30 && mouseX<220 && mouseY>585 && mouseY<680) {
        state = "scene1";
        click.play();
      } else if  (mouseX>400 && mouseX<770 && mouseY>585 && mouseY<680) {
        state = "scene10";
        click.play();
}
      }
}

void scene4 () {
  background (178, 71, 132);
  squarepumpkin();
   shape (right,580, 580,200,100);
    shape (left, 30, 580, 200, 100);
    textSize (36);
    text ("This is how your pumpkin currently looks",60, 200);
    text ("Back", 140, 600);
    text ("Next",580, 600);
      if (mousePressed) {
      if (mouseX>30 && mouseX<220 && mouseY>585 && mouseY<680) {
        state = "scene1";
        click.play();
      } else if  (mouseX>400 && mouseX<770 && mouseY>585 && mouseY<680) {
        state = "scene14";
        click.play();
  }
 }
}

void scene5 () { //w/ round eye pumpkin - choose mouth 
  background (71,61,138);
  textSize (40);
  text ("Choose the mouth of your choice",90, 150);
  mouth2.resize (0,120);//fangs 
  image(mouth2, 100, 200);
   mouth1.resize (0,130);//lots of teeth and fangs 
  image (mouth1, 300, 350);
  mouth3.resize (0,100);//smile 
  image (mouth3, 540,500);
     if (mousePressed) { //choose fangs
        if (mouseX>100 && mouseX<260 && mouseY>200 && mouseY<300) {
          state = "scene7";
          click.play();
    } else if (mouseX>300 && mouseX<500 && mouseY>400 && mouseY<440) { //choose fangs with a lot of teeth 
        state = "scene8";
        click.play();
    }
     else if  (mouseX>530 && mouseX<730 && mouseY>500 && mouseY<590) { // choose smile
       state = "scene9";
       click.play();
    }
   }
  }
  
    

void scene6 () {
    background (0);
    pumpkin.resize (0,400);
    image (pumpkin, 140, 200);
    shape (eyes1, 325, 330);
}

void scene7() { //round eyes w/ fangs 
  background (0,0,130);
  roundpumpkin ();
  mouth2.resize (0,120);//fangs 
  x += speed * direction;
  if (x>317) {
    direction = -direction;
  }
  if ( x<307) {
   image (mouth2, x,400);
   direction = 1;
} else {
  image (mouth2, x,400);
}
  textSize (30);
 fill(r,g,b);
 r = random (0,255);
 g = random (0,255);
 b = random (0, 255);
  text ("YAY!! You Decorated Your Own Pumpkin!",120, 70);
  textSize(60);
  text ("Wasn't that fun?!",180, 170);
  textSize (40);
  fill(0);
  text ("Play Again!", 290, 590);
    if (mousePressed) 
    if  (mouseX>250 && mouseX<600 && mouseY>550 && mouseY<590) {
    state = "intro";
    click.play();

     }
   }

   

void roundpumpkin () { //round eyes pumpkin 
      pumpkin.resize (0,400);
    image (pumpkin, 140, 200);
    shape (eyes1, 325, 330);
}

void scene8 () {
  background (0,0,130);
  roundpumpkin ();
  mouth1.resize (0,130);//lots of teeth and fangs 
    x += speed * direction;
  if (x>307) {
    direction = -direction;
  }
  if (x<283) {
   image (mouth1, x,400);
   direction = 1;
} else {
  image (mouth1, x,400);
}
  textSize (30);
 fill(r,g,b);
 r = random (0,255);
 g = random (0,255);
 b = random (0, 255);
  text ("YAY!! You Decorated Your Own Pumpkin!",120, 70);
  textSize(60);
  text ("Wasn't that fun?!",180, 170);
  textSize (40);
  fill(0);
    text ("Play Again!", 290, 590);
    if (mousePressed) 
    if  (mouseX>250 && mouseX<600 && mouseY>550 && mouseY<590) {
    state = "intro";
    click.play();
    println ("mouse is over words");
  }
 }


void scene9 () {
  background (0,0,130);
  roundpumpkin ();
  mouth3.resize (0,100);//smile 
    x += speed * direction;
  if (x>310) {
    direction = -direction;
  }
  if ( x<295) {
   image (mouth3, x,400);
   direction = 1;
} else {
  image (mouth3, x,400);
}
  textSize (30);
  fill(r,g,b);
 r = random (0,255);
 g = random (0,255);
 b = random (0, 255);
  text ("YAY!! You Decorated Your Own Pumpkin!",120, 70);
  textSize(60);
  text ("Wasn't that fun?!",180, 170);
  textSize (40);
  fill(0);
      text ("Play Again!", 290, 590);
    if (mousePressed) 
    if  (mouseX>250 && mouseX<600 && mouseY>550 && mouseY<590) {
    state = "intro";
    click.play();

    }
}

// triangle pumpkin 
void trianglepumpkin () {
   pumpkin.resize(0,400);
  image (pumpkin, 140, 200);
  shape (eyes2, 300, 295);
}

void scene11 () {
   background (0,0,130);
  trianglepumpkin ();
  mouth2.resize (0,120);//fangs 
    x += speed * direction;
  if (x>317) {
    direction = -direction;
  }
  if ( x<307) {
   image (mouth2, x,400);
   direction = 1;
} else {
  image (mouth2, x,400);
}
  textSize (30);
 fill(r,g,b);
 r = random (0,255);
 g = random (0,255);
 b = random (0, 255);
  text ("YAY!! You Decorated Your Own Pumpkin!",120, 70);
  textSize(60);
  text ("Wasn't that fun?!",180, 170);
  textSize (40);
  fill(0);
    text ("Play Again!", 290, 590);
    if (mousePressed) 
    if  (mouseX>250 && mouseX<600 && mouseY>550 && mouseY<590) {
    state = "intro";
    click.play();
}
}
    
void scene12 () {
   background (0,0,130);
  trianglepumpkin ();
  mouth1.resize (0,130);//lots of teeth and fangs 
      x += speed * direction;
  if (x>307) {
    direction = -direction;
  }
  if (x<283) {
   image (mouth1, x,400);
   direction = 1;
} else {
  image (mouth1, x,400);
}
  textSize (30);
 fill(r,g,b);
 r = random (0,255);
 g = random (0,255);
 b = random (0, 255);
  text ("YAY!! You Decorated Your Own Pumpkin!",120, 70);
  textSize(60);
  text ("Wasn't that fun?!",180, 170);
  textSize (40);
  fill(0);
    text ("Play Again!", 290, 590);
    if (mousePressed) 
    if  (mouseX>250 && mouseX<600 && mouseY>550 && mouseY<590) {
    state = "intro";
    click.play();
}
}

void scene13 () { 
   background (0,0,130);
  trianglepumpkin ();
  mouth3.resize (0,100);//smile 
    x += speed * direction;
  if (x>310) {
    direction = -direction;
  }
  if ( x<295) {
   image (mouth3, x,400);
   direction = 1;
} else {
  image (mouth3, x,400);
}
  textSize (30);
 fill(r,g,b);
 r = random (0,255);
 g = random (0,255);
 b = random (0, 255);
  text ("YAY!! You Decorated Your Own Pumpkin!",120, 70);
  textSize(60);
  text ("Wasn't that fun?!",180, 170);
  textSize (40);
  fill(0);
    text ("Play Again!", 290, 590);
    if (mousePressed) 
    if  (mouseX>250 && mouseX<600 && mouseY>550 && mouseY<590) {
    state = "intro";
    click.play();
 }
} 
void scene10() {
  background (0, 102, 102);
  textSize (40);
  text ("Choose the mouth of your choice",90, 150);
  mouth2.resize (0,120);//fangs 
  image(mouth2, 100, 200);
   mouth1.resize (0,130);//lots of teeth and fangs 
  image (mouth1, 300, 350);
  mouth3.resize (0,100);//smile 
  image (mouth3, 540,500);
     if (mousePressed) { //choose fangs
        if (mouseX>100 && mouseX<260 && mouseY>200 && mouseY<300) {
          state = "scene11";
          click.play();
    } else if (mouseX>300 && mouseX<500 && mouseY>400 && mouseY<440) { //choose fangs with a lot of teeth 
        state = "scene12";
        click.play();
    }
     else if  (mouseX>530 && mouseX<730 && mouseY>500 && mouseY<590) { // choose smile
       state = "scene13";
       click.play();
    }
     }
}
// square pumpkin 
void squarepumpkin () {
  pumpkin.resize(0,400);
  image (pumpkin, 140, 200);
  shape (eyes3, 163, 195,980,1000);
}

void scene14 () {
    background (178, 71, 132);
  textSize (40);
  text ("Choose the mouth of your choice",90, 150);
  mouth2.resize (0,120);//fangs 
  image(mouth2, 100, 200);
   mouth1.resize (0,130);//lots of teeth and fangs 
  image (mouth1, 300, 350);
  mouth3.resize (0,100);//smile 
  image (mouth3, 540,500);
     if (mousePressed) { //choose fangs
        if (mouseX>100 && mouseX<260 && mouseY>200 && mouseY<300) {
          state = "scene15";
          click.play();
    } else if (mouseX>300 && mouseX<500 && mouseY>400 && mouseY<440) { //choose fangs with a lot of teeth 
        state = "scene16";
        click.play();
    }
     else if  (mouseX>530 && mouseX<730 && mouseY>500 && mouseY<590) { // choose smile
       state = "scene17";
       click.play();
     }
    }
}

void scene15 (){

  background (0,0,130);
  squarepumpkin ();
  mouth2.resize (0,120);//fangs 
  x += speed * direction;
  if (x>317) {
    direction = -direction;
  }
  if ( x<307) {
   image (mouth2, x,400);
   direction = 1;
} else {
  image (mouth2, x,400);
}
  textSize (30);
 fill(r,g,b);
 r = random (0,255);
 g = random (0,255);
 b = random (0, 255);
  text ("YAY!! You Decorated Your Own Pumpkin!",120, 70);
  textSize(60);
  text ("Wasn't that fun?!",180, 170);
  textSize (40);
  fill(0);
      text ("Play Again!", 290, 590);
    if (mousePressed) 
    if  (mouseX>250 && mouseX<600 && mouseY>550 && mouseY<590) {
    state = "intro";
    click.play();
}
}

void scene16 () {
  background (0,0,130);
  squarepumpkin ();
  mouth1.resize (0,130);//lots of teeth and fangs 
      x += speed * direction;
  if (x>307) {
    direction = -direction;
  }
  if (x<283) {
   image (mouth1, x,400);
   direction = 1;
} else {
  image (mouth1, x,400);
}
  textSize (30);
 fill(r,g,b);
 r = random (0,255);
 g = random (0,255);
 b = random (0, 255);
  text ("YAY!! You Decorated Your Own Pumpkin!",120, 70);
  textSize(60);
  text ("Wasn't that fun?!",180, 170);
  textSize (40);
  fill(0);
      text ("Play Again!", 290, 590);
    if (mousePressed) 
    if  (mouseX>250 && mouseX<600 && mouseY>550 && mouseY<590) {
    state = "intro";
   click.play();
}
}



void scene17 () {

  background (0,0,130);
  image (pumpkin, 140, 300);
  shape (eyes3, 163, 295,980,1000);
  mouth3.resize (0,100);//smile 
  x += speed * direction;
  if (x>310) {
    direction = -direction;
  }
  if ( x<295) {
   image (mouth3, x,500);
   direction = 1;
} else {
  image (mouth3, x,500);
}


 textSize (30);
 fill(0);
 r = random (0,255);
 g = random (0,255);
 b = random (0, 255);
  textSize(44);
  text ("Great! You decorated your pumpkin!",50,70);
  textSize(36);
  text ("Find out what the Pumpkin Expert",80, 140);
  textSize (36);
  text ("has to say about it",160, 240);
  fill(0);
  text ("NEXT", 650, 690);
  textSize (60);
    if (mousePressed) 
    if  (mouseX>650 && mouseX<760 && mouseY>650 && mouseY<690) {
    state = "scene19";
    click.play();
    }

  }

void scene19 () {
  background (255);
    text ("Play Again", 250, 690);
  textSize (60);
  //if (images[4] ==  || images[4] == 1) { //fangs 
  //image (girl, 40, 350, 400, 400);
  //} else {
  //image (pumpkin, 40, 350, 400, 400); //mouth3 smile 
  //}
  //println(images[4]);
  }


void mousePressed(){
  if (state == "scene19"){
    if  (mouseX>250 && mouseX<580 && mouseY>630 && mouseY<690) {
      state = "intro";
     click.play();
     
     //if (randomimages[ind] == speech1);
     //image (girl, 40, 350, 400, 400);
    }
  }
}

//void scene20 () {
//  background (255);
//  image (girl, 40, 350, 400, 400);
//}

//random image - text boxes
//if a certain random image is choosen then a different baby appears 
//grim image came from here http://www.clipartlord.com/category/halloween-clip-art/grim-reaper-clip-art/
// girl and monster came from here http://cliparts.co/halloween-cartoon