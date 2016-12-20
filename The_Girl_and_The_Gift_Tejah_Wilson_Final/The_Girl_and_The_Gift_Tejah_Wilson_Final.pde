import processing.sound.*;
SoundFile music;
SoundFile bells; 
SoundFile writing; 
SoundFile crumple; 
SoundFile laugh;
SoundFile claus; 
SoundFile shutter;
SoundFile shake; 
SoundFile crying; 
SoundFile jingle; 
SoundFile dinnertable; 
SoundFile flip; 

import processing.video.*;
//Font
PFont titlefont; 
PFont regfont; 
//Images 
PImage bed; 
PImage dinner;
PImage box; 
PImage book;
PImage background; 
PImage gift; 
PImage ball;
PImage tiara;
PImage bear; 
PImage girl; 
PImage open;
PImage next; 
PImage pencil;
PImage letter; ;
PImage orn;
PImage books;
PImage bell;
PImage santa; 
PImage stamp;
PImage card; 
PImage home; 
PImage pen; 
PImage paper; 
PImage camera; 
PImage mail; 
PImage santa2;
PImage home2; 
PImage family; 
PImage end;
//Strings 
String state;
String object;
String adj1;
String gift1;
String verb1;
String adj2;
String adj3;
String adj4;
String adj5;
String name;
String verb2;
String relative;
String girlname;
String verb3;
//
int x = 345; 
int y = 645; 
float directionx = 1;
float directiony = 1; 
float directionx1 = 1;
float directiony1 = 1; 
float directionx2 = 1; 
float directionx3 = 1;
float directionx4 = 1;
float directionx5 = 1;
float directionx6 = 1;

int x6 = 123;
int speed = 1; 
int x1 = 720; 
int y1 = 310; 
int x2 = 650; 
int y2 = 510; 
int x3 = 160;
int y3 = 360;
int x4 = 554; 
int x5 = 750; 

void setup (){
  state = "intro";
  object = "";
  adj1 = " ";
  gift1 = " "; 
  verb1 = " "; 
  adj2 = "";
  adj3 = "";
  adj4 = "";
  adj5 = "";
  name = "";
  verb2 = ""; 
  relative = "";
  girlname = "";
  verb3 = "";
  size (1000, 1000);
  box = loadImage ("textbox.png"); 
  book = loadImage("book.png");
  books = loadImage ("books.png"); 
  background = loadImage ("1.jpg"); 
  gift = loadImage ("gift.png");
  bear = loadImage ("teddy.png");
  girl = loadImage ("christmasgirl.jpg");
  pencil = loadImage ("pencil.png"); 
  pencil.resize(200,200); 
  letter = loadImage ("letter.png"); 
  camera = loadImage ("camera.png"); 
  orn = loadImage ("ornament.png"); 
  bell = loadImage ("bells.png"); 
  santa = loadImage ("santa.jpg"); 
  home = loadImage ("home.jpg"); 
  pen = loadImage ("pencil.png"); 
  paper = loadImage ("paper.png");
  stamp = loadImage ("santa1.jpg"); 
  card = loadImage ("tree.jpg");
  dinner = loadImage ("dinner.jpg"); 
  bed = loadImage ("bed.png"); 
  mail = loadImage ("mail.png");
  santa2 = loadImage ("santaa.png"); 
  home2 = loadImage ("home1.png"); 
  family = loadImage ("believeyou.jpg"); 
  end = loadImage ("reindeer.png");
  titlefont = createFont ("MountainsofChristmas-Bold.ttf", 100);
  regfont = createFont ("YatraOne-Regular.tff", 100); 
  music = new SoundFile (this, "christmas.mp3"); 
  bells = new SoundFile (this, "bells.mp3"); 
  claus = new SoundFile (this, "Claus.mp3"); 
  laugh = new SoundFile (this, "newlaugh.mp3"); 
  writing = new SoundFile (this, "newwriting.mp3"); 
  crumple = new SoundFile (this, "newcrumple.mp3"); 
  shake = new SoundFile (this, "shake.mp3");
  shutter = new SoundFile (this, "Shutter.mp3"); 
  jingle = new SoundFile (this, "misc.mp3"); 
  flip = new SoundFile (this, "flip.mp3"); 
  dinnertable = new SoundFile (this, "dinnertable.mp3");
  crying = new SoundFile (this, "crying.mp3"); 
  music.play(); 
  music.amp(1); 
  music.stop(); 
  music.loop(); 
  restart(); 
}

  
void restart() { 
  state = "intro";
  object = "";
  adj1 = " ";
  gift1 = " "; 
  verb1 = " "; 
  adj2 = "";
  adj3 = "";
  adj4 = "";
  adj5 = "";
  name = "";
  verb2 = ""; 
  relative = "";
  girlname = "";
  verb3 = "";
}


void draw () {
  if (state == "intro") {
    intro(); 
  }
  else if (state == "scene1"){
    scene1();
  }
  else if (state == "happyletter"){
    happyletter(); 
  }
  else if (state  == "write"){
    write(); 
  }
  else if (state == "adj2") {
    adj2();
  }
  else if (state == "adj3") {
    adj3();
  }
  else if (state == "adj4") {
    adj4(); 
  }
  else if (state == "adj5") {
    adj5();
  }
  else if (state == "verb2") {
    verb2(); 
  }
  else if (state == "getletter") {
    getletter(); 
  }
  else if (state =="recieveletter"){
    recieveletter();
  }
  else if (state == "dinner") {
    dinner(); 
  }
  else if (state == "verb3") {
    verb3();
  }
  else if (state == "cry") {
   cry();
  }
  else if (state == "name") {
    name(); 
  }
  else if (state == "reveal") {
    reveal();
  }
  else if (state == "believe") {
    believe(); 
  }
  else if (state == "end") {
   end(); 
  }
  println(state);
  
  println(mouseX, mouseY); 
}

void book() {
  background(background);
  image(book,50, 110);
  book.resize(900, 700);
}

void keyPressed() {
  if (state == "scene1") {
  gift1 += key; 
  }
  if (state == "write") {
  adj1 += key; 
  verb1 += key; 
  }
  if (state == "adj2") {
  adj2 += key;
  }
  if (state == "adj3") {
  adj3 += key;
  }
  if (state == "adj4") {
  adj4 += key ;
  }
  if (state == "adj5") {
  adj5 += key ;
  }
  if (state == "verb2") {
  verb2 += key ;
  }
  if (state == "verb3") {
   verb3 +=key;
  }
  if (state == "name"){
    name +=key;
  }
}

void intro () {
  background (background);
  fill(0);
  textFont (titlefont, 200); 
  text ("The Girl", 183, 200);
  text ("and",330, 380);
  text ("The Gift", 183, 580);
  gift.resize(300,300);
     x += -speed * directionx;
     y += speed * directiony;
  if (x<345) { 
    directionx = -directionx;
    directiony = -directiony;
  }
  if (x>370) {
   image (gift, x,y);
   directionx = 1;
   directiony = 1; 
  } else {
    image (gift, x, y); 
  }
  if (mousePressed){
  if (mouseX>345 && mouseX <658 && mouseY < 931 && mouseY >615) {
    state = "scene1"; 
    bells.play(); 
     }
   }
  }
 
 
void scene1 () {
   music.amp(0.1); 
   book();//720, 300
   textFont (titlefont);  
   textSize(30);
   text ("There once was a girl who",120, 190);
   text ("recieved a gift.",120, 230);
   text ("Type in the gift you want",540, 190);
   text ("the girl to recieve on", 540, 235);
   text ("the line.",540, 280);
   text (gift1, 540, 318);
   line (540, 319, 700, 319); 
   image (box, 200, 830); 
   box.resize (620, 125); 
   textSize(20);
   text ("Hint: Some of the images make different sounds when clicked. Can you find them?",208,870); 
   text ("Press the bell when done entering the name of the gift", 208, 915); 
    image (bell, 808, 675); 
    bell.resize (85, 110); 
    books. resize(150,150);//Moving books 
    //
    x1 += -speed * directionx;
    y1 += speed * directiony;
    if (x1<720) { 
      directionx = -directionx;
      directiony = -directiony;
    }
    if (x1>740) {
     image (books, x1, y1);
     directionx = 1;
     directiony = 1; 
    } else {
      image (books, x1, y1); 
    }
    //
     x4 += speed * directionx;
    if (x4>554) {
      directionx2 = -directionx;
    }
    camera.resize(127,100);
    if (x4<531) {
     image (camera, x4,400);
     directionx2 = 1;
     } else {
       image (camera, x4,400);
     }
     //
    bear.resize(200,200);//Moving bear
    x2 += -speed * directionx;
    y2 += speed * directiony;
    if (x2<650) { 
      directionx1 = -directionx;
      directiony1 = -directiony;
    }
    if (x2>670) {
     image (bear, x2, y2);
     directionx1 = 1;
     directiony1 = 1; 
    } else {
      image (bear, x2, y2); 
    }
    image (girl, 160, 310);
    girl.resize(280,400);

    } 
      
void happyletter () {
  book();
  textFont (titlefont);   
  textSize(30);
  text ("The girl loved the" + gift1,120, 180);  
  text ("so much. She was happy",120, 220);
  text ("because Santa gave her",120, 260); 
  text("exactly what she asked for.",120, 300);
  //text ("asked for.", 120, 340);  
  text ("She decided to write Santa",120, 655);
  text ("a letter thanking him for",120, 695);  
  text ("the" + gift1 + "" + ".", 120, 735);
  text ("Click on the pencil to",540, 180);
  text ("help her write her letter.",540, 220);
  image (box, 200, 830); 
  box.resize (620, 85); 
  textSize(20);
  text ("Hint: Some of the images make different sounds when clicked. Can you find them?",208,870); 
  image (pencil, 680, 500);
  pencil.resize(200, 200); 
  image (letter, 540, 280); 
  letter.resize (240,240);
    gift.resize(200,200);
     x3 += -speed * directionx;
     y3 += speed * directiony;
  if (x3<160) { 
    directionx = -directionx;
    directiony = -directiony;
  }
  if (x3>185) {
   image (gift, x3,y3);
   directionx = 1;
   directiony = 1; 
  } else {
    image (gift, x3, y3); 
  }
 }

void adj2() { 
  background (background); 
  image (orn, 50,-100); 
  orn.resize(800,870); 
  textFont (titlefont);
  textSize (45); 
  text ("Fill in the blank", 388, 448 ); 
  text ("with an ADJECTIVE", 343,508);
  text (adj2,460,615); 
  line (372,620,647,620);
  image (bell, 780, 630); 
  bell.resize (200, 250); 
   image (box, 205, 830); 
   box.resize (620, 125);
   textSize(30); 
   text ("Type in any adjective and then find (and click) the bell ",213,870); 
   text ("        somewhere on this page to add another word.", 213, 915); 
  if (mousePressed) {
  if (mouseX>792 && mouseX<979 && mouseY<873 && mouseY>635){
  state = "adj3";      
  bells.play(); 
   }  
  }
}
  

void adj3() {
  background (background); 
  image (orn, 50,-100); 
  orn.resize(800,870); 
  textFont (titlefont);
  textSize (45); 
  text ("Fill in the blank", 388, 448 ); 
  text ("with an ADJECTIVE", 343,508);
  text (adj3,460,615); 
  line (372,620,647,620);
  image (bell, 53, 497); 
  bell.resize (200, 250); 
   image (box, 205, 830); 
   box.resize (620, 125);
   textSize(30); 
   text ("Type in another adjective and then find (and click) the",213,870); 
   text ("              bell on this page to add another word.", 213, 915); 
  if (mousePressed) {
  if (mouseX>61 && mouseX<245 && mouseY<729 && mouseY>500){
  state = "adj4";    
  bells.play(); 
   }
  }
}

void adj4 () { 
  background (background); 
  image (orn, 50,-100); 
  orn.resize(800,870); 
  textFont (titlefont);
  textSize (45); 
  text ("Fill in the blank", 388, 448 ); 
  text ("with an ADJECTIVE", 343,508);
  text (adj4,460,615); 
  line (372,620,647,620);
  image (bell, 780, 430); 
  bell.resize (200, 250);
      image (box, 205, 830); 
   box.resize (620, 125);
   textSize(30); 
   text ("Type in another adjective and then find (and click) the",213,870); 
   text ("              bell on this page to add another word.", 213, 915); 
  if (mousePressed) {
  if (mouseX>794 && mouseX<971 && mouseY<879 && mouseY>439){
  state = "adj5";    
  bells.play(); 
   }
  }  
}

void adj5 () {
  background (background); 
  image (orn, 50,-100); 
  orn.resize(800,870); 
  textFont (titlefont);
  textSize (45); 
  text ("Fill in the blank", 388, 448 ); 
  text ("with an ADJECTIVE", 343,508);
  text (adj5,460,615); 
  line (372,620,647,620);
  image (bell, 286, 70); 
  bell.resize (200, 250); 
      image (box, 205, 830); 
   box.resize (620, 125);
   textSize(30);
   text ("Type in another adjective and then find (and click) the",213,870); 
   text ("              bell on this page to add another word.", 213, 915); 
  if (mousePressed) {
  if (mouseX>299 && mouseX<475 && mouseY<307 && mouseY>68){
  state = "verb2";    
  bells.play();
  }
 }
}

void verb2 () {
  background (background); 
  image (orn, 50,-100); 
  orn.resize(800,870); 
  textFont (titlefont);
  textSize (45); 
  text ("Fill in the blank", 388, 448 ); 
  text ("with a VERB", 404,508);
  text (verb2,460,615); 
  line (372,620,647,620);
  image (bell, 754, 192); 
  bell.resize (200, 250); 
     image (box, 205, 830); 
   box.resize (620, 125);
   textSize(30);
  text ("         Awesome, now fill in the blank with a verb. ",213,870); 
  text ("       Click the bell when done to add another word. ", 213, 915); 
  if (mousePressed) {
  if (mouseX>758 && mouseX<942 && mouseY<419 && mouseY>197){
  state = "verb3";    
  bells.play();
  }
  }
  
}

void verb3 () {
  background (background); 
  image (orn, 50,-100); 
  orn.resize(800,870); 
  textFont (titlefont);
  textSize (45); 
  text ("Fill in the blank", 388, 448 ); 
  text ("with a VERB", 404,508);
  text (verb3,460,615); 
  line (372,620,647,620);
  image (bell, 59, 379); 
  bell.resize (200, 250); 
       image (box, 205, 830); 
   box.resize (620, 125);
   textSize(30);
  text ("               Fill in the blank with another verb. ",213,870); 
  text ("       Click the bell when done to add another word. ", 213, 915); 
  if (mousePressed) {
  if (mouseX>62 && mouseX<252 && mouseY<665 && mouseY>378){
  state = "name";      
  bells.play(); 
  }
  }
}

void name () {
  background (background); 
  image (orn, 50,-100); 
  orn.resize(800,870); 
  textFont (titlefont);
  textSize (45); 
  text ("Fill in the blank", 388, 448); 
  text ("with a NAME", 404,508);
  text (name,460,615); 
  line (372,620,647,620);
  image (bell, 780, 430); 
  bell.resize (200, 250); 
         image (box, 205, 830); 
   box.resize (620, 125);
   textSize(30);
  text ("           Final Word: Fill in the blank with a name.",213,870); 
  text ("                      Click the bell when done.", 213, 915); 
  if (mousePressed) {
  if (mouseX>794 && mouseX<971 && mouseY<885 && mouseY>441){
  state = "write";    
  bells.play(); 
  }
  }
}

void write () {
  background (background);  
  image (box, 152, 20);
   box.resize (748, 180);
     textSize(35);
  text ("     She decided to write a thank you letter to Santa.",170, 70);
  text ("         Here's the letter that you helped her create.", 170, 120); 
  text ("           Press the bell to send the letter to santa", 170, 170); 
  textSize(40); 
  image (letter, 125, 250);  
  letter.resize (800, 750); 
  text ("Dear Santa,", 242, 315); 
  text ("Thank you so much for the" + " " + adj2, 242, 365); 
  text (gift1 + " " + "." + " " +"I am going to" + " " + verb2 + " " + "with", 242, 415); 
  text ("my" + " " + gift1 + " " + "all the time.", 242, 460); 
  text ("I was so" + " " + adj3 + " " + "when I opened the box", 242, 550);
  text ("and saw the" + gift1 + " " + ".", 242, 600);
  text ("I hope you" + " " + verb3 +  " " + "your Christmas.",242,650);
  text ("See you next year!",242,750);
  text ("Love,",242,800);
  text (name,280,850);
  image (bell, 848, 630); 
  bell.resize (150, 200); 
  textSize (40); 
  if (mousePressed) {
  if (mouseX>856 && mouseX<992 && mouseY<811 && mouseY>633){
  state = "getletter";    
  bells.play();
  }
 }
}




void getletter() {
  book();
  //left page 
  textSize(30); 
  text ("After its long journey",120, 180); 
  text ("to the North Pole, Santa", 120, 220);
  text("finally recieved" + " " + name + "'s" ,120, 260);
  text("letter.",120, 300);
  text ("'Ho!Ho!Ho! What a" + " " + adj4, 120, 655); 
  text ("girl',Santa said.",120, 695);
  image (santa, 123, 360); 
  santa.resize (310, 230);
  image (box, 200, 830); 
  box.resize (620, 125);
  image (pencil, 750, 441);
  pencil.resize(100,100);
  image(paper, 540,390);
  paper.resize(150,200); 
  //right page
  text ("Santa decided to write a", 540, 180); 
  text ("letter back to" + " " + name + " " + ". He", 540, 220); 
  text ("quickly got one of his elves", 540, 260);
  text ("to bring him a pencil and", 540, 300); 
  text ("paper.", 540, 340); 
  text ("'Dear" + " " + name + "...'",540, 655);
  text ("He began to write.", 540, 695);
  image (bell, 808, 675); 
  bell.resize (85, 110);
   textSize(23);
   text ("Remember some of the images make different sounds when clicked.",208,870); 
   text ("Press the bell to move onto to the next page.", 208, 915);
  //x5 += speed * directionx;
  //if (x5>750) {
  //  directionx5 = -directionx;
  //}
  //pencil.resize(100,100);
  //if (x5<730) {
  // image (pencil, x5,441);
  // directionx5 = 1;
 //}else {
  // image (pencil, x5,441);
 //}
 
}

void recieveletter () {
  book(); 
  textFont (titlefont);  
  textSize (30); 
  text("The next morning when",120, 180);
  text(name + " " + "rolled out of bed",120, 220);
  text("she noticed a letter ", 120, 260);
  text("resting on her bedside.",120, 300);
  image (card, 123, 350);
  card.resize (310, 350); 
  //right page
  text ("She couldn't believe who", 540, 180); 
  text ("it was from!", 540, 220);
  text ("'SANTA!' She exclaimed.", 540, 300); 
  image (stamp, 540, 325); 
  stamp.resize (320, 360); 
  image (bell, 808, 675); 
  bell.resize (85, 110); 
}

void dinner () {
  book(); 
  textSize(30); 
  image (dinner, 123, 360); 
  dinner.resize (310, 230);
  text ("Later on at the dinner ", 120, 180); 
  text ("table" + " " + name + " " + "told her", 120, 220); 
  text ("family about the letter", 120, 260);
  text ("Santa wrote to her.", 120, 300); 
  text ("'Santa wrote me a letter!", 120, 655); 
  text ("He wrote me a letter!'",120, 695);
  text (name + " " + "exclaimed.", 120, 735); 
    //right page 
  text ("But no one believed" + " " + name + " " + ".", 540, 180);
  text ("They didn't believe that",540, 220); 
  text ("Santa was real.", 540, 260); 
  //image home, 
  image (home, 540, 300); 
  home.resize (330, 360); 
  image (bell, 808, 675); 
  bell.resize (85, 110);
   image (box, 200, 830); 
   box.resize (620, 85); 
   textSize(20);
   text ("Hint: Some of the images make different sounds when clicked. Can you find them?",208,870); 
}

void cry (){
  book();
  image (bed, 123, 330); 
     //x6 += speed * directionx;
 // if (x6>123) {
  //  directionx6 = -directionx;
//  }
 bed.resize (330, 360);
 // if (x6<100) {
  //image (bed, x6, 330); 
 //  di//rectionx6 = 1;
//   } else {
 //  image (bed, x6, 330); 
 //  }
   textSize(30); 
  text ("That night" + " " + name + " " + "went",120, 180);
  text ("to bed and cried. She wrote", 120, 220);
  text ("another letter to Santa", 120, 260);
  text ("telling him that no one", 120, 300);
  text ("believes he's real anymore.",120, 340); 
  //image on rigth side of bed or something, idk 
  text (name + " " + "mailed another", 540, 180); 
  text ("letter to Santa that same", 540, 220);
  text ("night. The next day there", 540,260 ); 
  text ("was a surprise waiting", 540,300); 
  text ("for her in her living room.",540,340); 
  image (mail, 540, 330); 
  mail.resize (330, 360); 
  image (bell, 808, 675); 
  bell.resize (85, 110); 
     image (box, 200, 830); 
   box.resize (620, 85); 
   textSize(20);
   text ("Hint: Some of the images make different sounds when clicked. Can you find them?",208,870); 
}

void reveal () {
  //left side 
  book(); 
  image (home2, 550, 360); 
  home2.resize (290, 320); 
  image (santa2, 145, 330); 
  santa2.resize (270, 300); 
  textFont (titlefont);  
  textSize (30); 
  text (name + " " + "saw a very" + " " + adj2, 120, 180); 
  text ("figure in a big red suit talking",120, 220); 
  text ("to her parents.",120, 260); 
  text ("'Santa? Is that you?', she asked.",120, 310);
  text ("The big" + adj1 + "Claus turned around", 120, 655); 
  text ("and gave" + " " + name + " " + "a big" + " " + adj3, 120, 695); 
  text ("hug.", 120, 735);
  //right side 
  text ("'Ho! Ho! Ho! Yes it is me.',",540, 180);
  text ("Santa answered, 'I recieved ",540, 220);
  text ("your letter, and I decided to", 540, 260);
  text ("to come pay a visit to your", 540, 300); 
  text ("parents'.", 540,340); 
  image (bell, 808, 675); 
  bell.resize (85, 110); 
   image (box, 200, 830); 
   box.resize (620, 85); 
   textSize(20);
   text ("Remember some of the images make different sounds when clicked.",208,870); 
  }
  
void believe () {
  book();
  textSize (30); 
  image (family, 129, 248); 
  family.resize (330, 360); 
  text ("'We believe you" + " " + name + "!',",120, 180);
  text ("said her parents.",120, 220);
  text ("She was so happy that",120,655);
  text ("her parents finally believed",120,695);
  text ("in Santa.",120, 735);
  text ("That night" + " " + name + " and her",540, 180);
  text ("family spent the rest of the",540, 220);
  text ("night at her house, enjoying" + adj1, 540, 260);
  text ("the holidays with Santa Claus.", 540, 300); 
  image (bell, 808, 675); 
  bell.resize (85, 110); 
  image (home, 540, 320); 
  home.resize (320, 350);
}

void end () {
  music.amp(0.4); 
  background(background); 
  textSize (40); 
  textSize (200); 
  text ("The End", 172, 280); 
  image (box, 109, 810); 
  box.resize (775, 110);
  image (end,168, 354); 
  end.resize (660, 370); 
  textSize(70); 
  text ("Click the image to start over", 130, 880); 
}

void mousePressed () {
  if (state == "scene1") {
    if (mousePressed) {
      if (mouseX>171 && mouseX < 448 && mouseY < 708 && mouseY >310) {
      laugh.play(); 
    }
   }
  }
  if (state == "scene1") {
        if (mousePressed) {
    if (mouseX>803 && mouseX <888 && mouseY <780 && mouseY >693) {
          state = "happyletter";  
    bells.play();
      }
    }
  }
    if (state == "scene1") {
        if (mousePressed) {
    if (mouseX>725 && mouseX <869 && mouseY <452 && mouseY >300) {
    flip.play();
    flip.amp(1); 
        }
        }
  }
  if (state == "scene1") {
    if (mousePressed) {
    if (mouseX>537 && mouseX <668 && mouseY <500 && mouseY >408) {
    shutter.play(); 
    shutter.amp(1); 
  }
    }
  }
    if(state == "happyletter") {
    if (mousePressed) {
    if (mouseX>178 && mouseX<373 && mouseY<552 && mouseY>339){
   shake .play(); 
    }
    
}
 }
if(state == "happyletter") {
    if (mouseX>686 && mouseX<875 && mouseY<671 && mouseY>517){
    state = "adj2";
    writing.play(); 
    }
    
}
if (state == "happyletter") {
    if (mouseX>550 && mouseX<720 && mouseY<513 && mouseY>288){
    crumple.play(); 
     }
    

 }
   if (state == "getletter") {
        if (mousePressed) {
    if (mouseX>803 && mouseX <888 && mouseY <780 && mouseY >693) {
    state = "recieveletter";  
    bells.play(); 
     }
        }
  
    if (mousePressed) {
    if (mouseX>125 && mouseX<429 && mouseY<586 && mouseY>394) {
    claus.play(); 
    }  
}
      if (mousePressed) {
      if (mouseX>545 && mouseX<681 && mouseY<589 && mouseY>359) {
      crumple.play(); 

    }
      }
   }
 else if (state == "recieveletter") {
  if (mousePressed) {
  if (mouseX>803 && mouseX <888 && mouseY <780 && mouseY >693) {
  state = "dinner";  
  bells.play(); 
  }
  }
 }
   else if (state == "dinner") {
  if (mouseX>803 && mouseX <888 && mouseY <780 && mouseY >693) {
  state = "cry";  
  bells.play(); 
  }
    if (mouseX>123 && mouseX <431 && mouseY <590 && mouseY >360) {
    dinnertable.play(); 
    }
   }

   else if (state == "cry") {
      if (mousePressed) {
  if (mouseX>803 && mouseX <888 && mouseY  <780 && mouseY >693) {
  state = "reveal";  
  bells.play(); 
   }
      }
  if (mouseX>153 && mouseX <364 && mouseY <590 && mouseY >360) {
  crying.play(); 
  crying.amp(1); 
    }  
}
    else if (state == "reveal") {
      if (mousePressed) {
  if(mouseX>803 && mouseX <888 && mouseY <780 && mouseY >693) {
  state = "believe";  
  bells.play();
  }
 }
  if (mousePressed) {
   if (mouseX>174 && mouseX<411 && mouseY<624 && mouseY>332){
   claus.play(); 
    }
    }
} 
  else  if (state == "believe") {
  if (mousePressed) {
  if (mouseX>803 && mouseX <888 && mouseY <780 && mouseY >693) {
  state = "end";  
  bells.play();
  }
 }
    if (mousePressed) {
    if (mouseX>539 && mouseX<856 && mouseY <667 && mouseY >324){
   jingle.play();   
}
  }
  }

  else if (state == "end") {
  if (mousePressed) {
    if (mouseX>166 && mouseX <829 && mouseY <723 && mouseY >354) {
    state = "intro";
    restart(); 
    }
   }
  }

    }