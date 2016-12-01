// Title -  Pumpkin CYOA 
// A simple CYOA adevnture game. Click your choices, and in the end you
//have your final creation!

//Images and Music Credit 
// background music came from here https://www.youtube.com/watch?v=JxFLOPi-a8w
//the click sound came from here https://www.youtube.com/watch?v=oCUBtBZBkk8
// all mouth images came from here 3dpcase.sculpteo.com
//pumpkin image on main screen came from here http://2.bp.blogspot.com/-Jmgq9LEKBSk/VCi2Mkd3KTI/AAAAAAAAFpc/owu404xpC_A/s1600/pumpkin.png
//grim image came from here http://www.clipartlord.com/category/halloween-clip-art/grim-reaper-clip-art/
// girl and monster came from here http://cliparts.co/halloween-cartoon

import processing.sound.*;
SoundFile music;
SoundFile click;
PFont chiller; 

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
PImage grim; 
PImage pretty;
PImage bad; 
int speed = 1;
float direction = 1;
int x = 307;

PImage[] images = new PImage [6];

int randomimage = 0;
  
void setup () {
  size (800,800);
  girl = loadImage ("girl.png");
  grim = loadImage ("grim.png");
  images [0] = loadImage ("cute.png");
  images [1] = loadImage ("ugly.png");
  images [2] = loadImage ("love.png");
  images [3] = loadImage ("eww.png");
  images [4] = loadImage ("pretty.png");
  images [5] = loadImage ("bad.png");
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
  music = new SoundFile (this,"halloween.mp3");
  music.play();
  music.stop();
  music.loop();
  music.amp (1);
  click = new SoundFile (this, "click.mp3");
  click.amp(3);
  chiller = loadFont ("Chiller.vlw");
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
else if (state == "scene20") {
  scene20();
}
else if (state == "scene21") {
  scene21();
}
else if (state =="scene22") {
  scene22();
}
else if (state =="scene23") {
  scene23();
}
else if (state =="scene24"){
  scene24();
}
else if (state =="scene25"){
  scene25();
}
else if (state =="scene26"){
  scene26();
}
else if (state == "scene27") {
  scene27();
}
println (state);

}

  void intro() {
  background (0);
  fill(170,0,170);
  stroke (170,0,170);
  rect (300,600,200,100);
  textFont (chiller,30);
  textSize (50);
  fill(255);
  text ("Click To Play",308, 660);
  textSize (90);
  fill(255);
  text ("Decorate Your Own Pumpkin",60, 200);
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
    background(30, 30, 90);
    textSize (80);
    fill(255);
    text("Pick the eyes of your choice", 115, 250);
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
    textSize (68);
    fill(255);
    text ("This is how your pumpkin currently looks",35, 200);
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

  
void scene3() {
  background (150, 60, 80);
   trianglepumpkin ();
    shape (right,580, 580,200,100);
    shape (left, 30, 580, 200, 100);
    textSize (68);
    fill(255);
    text ("This is how your pumpkin currently looks",35, 200);
    text ("Back", 140, 600);
    text ("Next",580, 600);
      if (mousePressed) {
      if (mouseX>30 && mouseX<220 && mouseY>585 && mouseY<680) {
        state = "scene1";
        click.play();
      } else if  (mouseX>400 && mouseX<770 && mouseY>585 && mouseY<680) {
        state = "scene20";
        click.play();
}
      }
}

void scene4 () {
  background (10, 100, 90);
  squarepumpkin();
   shape (right,580, 580,200,100);
    shape (left, 30, 580, 200, 100);
    textSize (68);
    fill(255);
    text ("This is how your pumpkin currently looks",35, 200);
    text ("Back", 140, 600);
    text ("Next",580, 600);
      if (mousePressed) {
      if (mouseX>30 && mouseX<220 && mouseY>585 && mouseY<680) {
        state = "scene1";
        click.play();
      } else if  (mouseX>400 && mouseX<770 && mouseY>585 && mouseY<680) {
        state = "scene24";
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
  background (93,28,53);
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
  fill(255);
  textSize(60);
  text ("Great! You decorated your pumpkin!",50,120);
  textSize(60);
  text ("Find out what the Pumpkin Expert",80, 190);
  textSize (60);
  text ("has to say about it",160, 260);
  fill(255);
  text ("NEXT", 650, 690);
  textSize (70);
    if (mousePressed) 
    if  (mouseX>650 && mouseX<760 && mouseY>650 && mouseY<690) {
    state = "scene19";
    click.play();

     }
   }

   

void roundpumpkin () { //round eyes pumpkin function 
      pumpkin.resize (0,400);
    image (pumpkin, 140, 200);
    shape (eyes1, 325, 330);
}

void scene8 () {
  background (93,28,53);
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
  fill(255);
  textSize(60);
  text ("Great! You decorated your pumpkin!",50,120);
  textSize(60);
  text ("Find out what the Pumpkin Expert",80, 190);
  textSize (60);
  text ("has to say about it",160, 260);
  fill(255);
  text ("NEXT", 650, 690);
  textSize (70);
    if (mousePressed) 
    if  (mouseX>650 && mouseX<760 && mouseY>650 && mouseY<690) {
    state = "scene19";
    click.play();
  }
 }


void scene9 () {
  background (93,28,53);
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
  fill(255);
  textSize(60);
  text ("Great! You decorated your pumpkin!",50,120);
  textSize(60);
  text ("Find out what the Pumpkin Expert",80, 190);
  textSize (60);
  text ("has to say about it",160, 260);
  fill(255);
  text ("NEXT", 650, 690);
  textSize (70);
    if (mousePressed) 
    if  (mouseX>650 && mouseX<760 && mouseY>650 && mouseY<690) {
    state = "scene19";
    click.play();

    }
}

// triangle pumpkin function 
void trianglepumpkin () {
   pumpkin.resize(0,400);
  image (pumpkin, 140, 200);
  shape (eyes2, 300, 295);
}

void scene11 () {
   background (93,28,53);
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
  fill(255);
  textSize(60);
  text ("Great! You decorated your pumpkin!",50,120);
  textSize(60);
  text ("Find out what the Pumpkin Expert",80, 190);
  textSize (60);
  text ("has to say about it",160, 260);
  fill(255);
  text ("NEXT", 650, 690);
  textSize (70);
    if (mousePressed) 
    if  (mouseX>650 && mouseX<760 && mouseY>650 && mouseY<690) {
    state = "scene19";
    click.play();
}
}
    
void scene12 () {
   background (93,28,53);
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
  fill(255);
  textSize(60);
  text ("Great! You decorated your pumpkin!",50,120);
  textSize(60);
  text ("Find out what the Pumpkin Expert",80, 190);
  textSize (60);
  text ("has to say about it",160, 260);
  fill(255);
  text ("NEXT", 650, 690);
  textSize (70);
    if (mousePressed) 
    if  (mouseX>650 && mouseX<760 && mouseY>650 && mouseY<690) {
    state = "scene19";
    click.play();
}
}

void scene13 () { 
   background (93,28,53);
  trianglepumpkin ();
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
  fill(255);
  textSize(60);
  text ("Great! You decorated your pumpkin!",50,120);
  textSize(60);
  text ("Find out what the Pumpkin Expert",80, 190);
  textSize (60);
  text ("has to say about it",160, 260);
  fill(255);
  text ("NEXT", 650, 690);
  textSize (70);
    if (mousePressed) 
    if  (mouseX>650 && mouseX<760 && mouseY>650 && mouseY<690) {
    state = "scene19";
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
    background (87,52,106);
  textSize (70);
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

  background (93,28,53);
  image (pumpkin, 140, 300);
  shape (eyes1, 325, 420);
  mouth2.resize (0,120);//fangs 
  x += speed * direction;
  if (x>317) {
    direction = -direction;
  }
  if ( x<307) {
   image (mouth2, x,500);
   direction = 1;
} else {
  image (mouth2, x,500);
}
  fill(255);
  textSize(60);
  text ("Great! You decorated your pumpkin!",50,120);
  textSize(60);
  text ("Find out what the Pumpkin Expert",80, 190);
  textSize (60);
  text ("has to say about it",160, 260);
  fill(255);
  text ("NEXT", 650, 690);
  textSize (70);
    if (mousePressed) 
    if  (mouseX>650 && mouseX<760 && mouseY>650 && mouseY<690) {
    state = "scene19";
    click.play();
}
}

void scene16 () {
  background (93,28,53);
  image (pumpkin, 140, 300);
  shape (eyes1, 325, 420);
  mouth1.resize (0,130);//lots of teeth and fangs 
      x += speed * direction;
  if (x>307) {
    direction = -direction;
  }
  if (x<283) {
   image (mouth1, x,500);
   direction = 1;
} else {
  image (mouth1, x,500);
}
  fill(255);
  textSize(60);
  text ("Great! You decorated your pumpkin!",50,120);
  textSize(60);
  text ("Find out what the Pumpkin Expert",80, 190);
  textSize (60);
  text ("has to say about it",160, 260);
  fill(255);
  text ("NEXT", 650, 690);
  textSize (70);
    if (mousePressed) 
    if  (mouseX>650 && mouseX<760 && mouseY>650 && mouseY<690) {
    state = "scene19";
    click.play();
}
}



void scene17 () {

  background (93,28,53);
  image (pumpkin, 140, 300);
  shape (eyes1, 325, 420);
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

  fill(255);
  textSize(60);
  text ("Great! You decorated your pumpkin!",50,120);
  textSize(60);
  text ("Find out what the Pumpkin Expert",80, 190);
  textSize (60);
  text ("has to say about it",160, 260);
  fill(255);
  text ("NEXT", 650, 690);
  textSize (70);
    if (mousePressed) 
    if  (mouseX>650 && mouseX<760 && mouseY>650 && mouseY<690) {
    state = "scene19";
    click.play();
    }

  }

void scene19 () {
  background (0);
  fill (255);
  textSize (80);
  text ("The Pumpkin Expert Says...",15, 70);
  fill(255);
  textSize (90);
  text ("Play Again", 450, 570); 
  image(images[randomimage], 435,100, 350, 350);
  if (randomimage == 0  || randomimage == 2 || randomimage == 4) { //fangs 
  image (girl, 38, 330, 400, 400);
  } else {
  image (grim, 38, 310, 400, 400); //mouth3 smile 

  }
  }
  
void scene20 () {
  background (87,52,106);
  textSize (70);
  text ("Choose the mouth of your choice",90, 150);
  mouth2.resize (0,120);//fangs 
  image(mouth2, 100, 200);
   mouth1.resize (0,130);//lots of teeth and fangs 
  image (mouth1, 300, 350);
  mouth3.resize (0,100);//smile 
  image (mouth3, 540,500);
     if (mousePressed) { //choose fangs
        if (mouseX>100 && mouseX<260 && mouseY>200 && mouseY<300) {
          state = "scene21";
          click.play();
    } else if (mouseX>300 && mouseX<500 && mouseY>400 && mouseY<440) { //choose fangs with a lot of teeth 
        state = "scene22";
        click.play();
    }
     else if  (mouseX>530 && mouseX<730 && mouseY>500 && mouseY<590) { // choose smile
       state = "scene23";
       click.play();
     }
    }
}
 
void scene21() {
  background (93,28,53);
  image (pumpkin, 140, 300);
  shape (eyes2, 300, 395);
  mouth2.resize (0,120);//fangs 
  x += speed * direction;
  if (x>317) {
    direction = -direction;
  }
  if ( x<307) {
   image (mouth2, x,500);
   direction = 1;
} else {
  image (mouth2, x,500);
}
  fill(255);
  textSize(60);
  text ("Great! You decorated your pumpkin!",50,120);
  textSize(60);
  text ("Find out what the Pumpkin Expert",80, 190);
  textSize (60);
  text ("has to say about it",160, 260);
  fill(255);
  text ("NEXT", 650, 690);
  textSize (70);
    if (mousePressed) 
    if  (mouseX>650 && mouseX<760 && mouseY>650 && mouseY<690) {
    state = "scene19";
    click.play();
}
  }
  
void scene22 () {
  background (93,28,53);
  image (pumpkin, 140, 300);
  shape (eyes2, 300, 395);
  mouth1.resize (0,120);//fangs 
      x += speed * direction;
  if (x>307) {
    direction = -direction;
  }
  if (x<283) {
   image (mouth1, x,500);
   direction = 1;
} else {
  image (mouth1, x,500);
}
  fill(255);
  textSize(60);
  text ("Great! You decorated your pumpkin!",50,120);
  textSize(60);
  text ("Find out what the Pumpkin Expert",80, 190);
  textSize (60);
  text ("has to say about it",160, 260);
  fill(255);
  text ("NEXT", 650, 690);
  textSize (70);
    if (mousePressed) 
    if  (mouseX>650 && mouseX<760 && mouseY>650 && mouseY<690) {
    state = "scene19";
    click.play();
    }
  }  

void scene23 () {
  background (93,28,53);
  image (pumpkin, 140, 300);
  shape (eyes2, 300, 395);
  mouth3.resize (0,100);//smile 
  x += speed * direction;
  if (x>317) {
    direction = -direction;
  }
  if ( x<307) {
   image (mouth3, x,500);
   direction = 1;
} else {
  image (mouth3, x,500);
}
  fill(255);
  textSize(60);
  text ("Great! You decorated your pumpkin!",50,120);
  textSize(60);
  text ("Find out what the Pumpkin Expert",80, 190);
  textSize (60);
  text ("has to say about it",160, 260);
  fill(255);
  text ("NEXT", 650, 690);
  textSize (70);
    if (mousePressed) 
    if  (mouseX>650 && mouseX<760 && mouseY>650 && mouseY<690) {
    state = "scene19";
    click.play();
 }
} 

void scene24 () {
    background (87,52,106);
  textSize (70);
  text ("Choose the mouth of your choice",90, 150);
  mouth2.resize (0,120);//fangs 
  image(mouth2, 100, 200);
   mouth1.resize (0,130);//lots of teeth and fangs 
  image (mouth1, 300, 350);
  mouth3.resize (0,100);//smile 
  image (mouth3, 540,500);
     if (mousePressed) { //choose fangs
        if (mouseX>100 && mouseX<260 && mouseY>200 && mouseY<300) {
          state = "scene25";
          click.play();
    } else if (mouseX>300 && mouseX<500 && mouseY>400 && mouseY<440) { //choose fangs with a lot of teeth 
        state = "scene26";
        click.play();
    }
     else if  (mouseX>530 && mouseX<730 && mouseY>500 && mouseY<590) { // choose smile
       state = "scene27";
       click.play();
     }
    }
}

void scene25 () {
  background (93,28,53);
  image (pumpkin, 140, 300);
  shape (eyes3, 163, 295,980,1000);
  mouth2.resize (0,120);//fangs 
  x += speed * direction;
  if (x>317) {
    direction = -direction;
  }
  if ( x<307) {
   image (mouth2, x,500);
   direction = 1;
} else {
  image (mouth2, x,500);
}
  fill(255);
  textSize(60);
  text ("Great! You decorated your pumpkin!",50,120);
  textSize(60);
  text ("Find out what the Pumpkin Expert",80, 190);
  textSize (60);
  text ("has to say about it",160, 260);
  fill(255);
  text ("NEXT", 650, 690);
  textSize (70);
    if (mousePressed) 
    if  (mouseX>650 && mouseX<760 && mouseY>650 && mouseY<690) {
    state = "scene19";
    click.play();
  
}
}
void scene26 () { 
  background (93,28,53);
  image (pumpkin, 140, 300);
  shape (eyes3, 163, 295,980,1000);
  mouth1.resize (0,120);//fangs 
      x += speed * direction;
  if (x>307) {
    direction = -direction;
  }
  if (x<283) {
   image (mouth1, x,500);
   direction = 1;
} else {
  image (mouth1, x,500);
}
  fill(255);
  textSize(60);
  text ("Great! You decorated your pumpkin!",50,120);
  textSize(60);
  text ("Find out what the Pumpkin Expert",80, 190);
  textSize (60);
  text ("has to say about it",160, 260);
  fill(255);
  text ("NEXT", 650, 690);
  textSize (70);
    if (mousePressed) 
    if  (mouseX>650 && mouseX<760 && mouseY>650 && mouseY<690) {
    state = "scene19";
    click.play();
}
}

void scene27 () {
  background (93,28,53);
  image (pumpkin, 140, 300);
  shape (eyes3, 163, 295,980,1000);
  mouth3.resize (0,100);//smile 
  x += speed * direction;
  if (x>317) {
    direction = -direction;
  }
  if ( x<307) {
   image (mouth3, x,500);
   direction = 1;
} else {
  image (mouth3, x,500);
}
  fill(255);
  textSize(60);
  text ("Great! You decorated your pumpkin!",50,120);
  textSize(60);
  text ("Find out what the Pumpkin Expert",80, 190);
  textSize (60);
  text ("has to say about it",160, 260);
  fill(255);
  text ("NEXT", 650, 690);
  textSize (70);
    if (mousePressed) 
    if  (mouseX>650 && mouseX<760 && mouseY>650 && mouseY<690) {
    state = "scene19";
    click.play();
}
}


void mousePressed(){
  if (state == "scene19"){
    if  (mouseX>450 && mouseX<752 && mouseY>527 && mouseY<570) {
     state = "intro";
     click.play();
     randomimage = int(random(0,5));
    }
  }
}




 