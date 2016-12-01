import processing.video.*;
Movie crying; 
PImage book;
PImage background; 
PImage mat;
PImage bg;
String state = "intro";
PImage gift; 
int counter;
String text1 = "There was once a girl who";
int time = 0 ; 
String text2= "recieved a gift";
PImage ball;
PImage tiara;
PImage bear; 
PImage girl; 
PImage open;
PImage next; 
PImage pencil;
PImage letter; 
PImage envelope; 
String object = "";
String adj1 = " ";
String gift1 = " "; 
String verb1 = " "; 
String adj2 = "";
String adj3 = "";
String adj4 = "";
String adj5 = "";
String name = "";
String verb2 = ""; 
String relative = "";
String girlname = "";
String newadj2 = "";
String newadj3 = "";
String newadj4 = "";
String newadj5 = "";
String newverb = "";
PImage back;
PImage orn;

void setup (){
  book = loadImage("book.png");
  size (1000, 1000);
  mat = loadImage("mat.jpg");
  background = loadImage ("background1.jpg"); 
  back = loadImage ("back.jpg"); 
  bg = loadImage ("bg.jpg");
  gift = loadImage ("gift.png");
  bear = loadImage ("teddy bear.png");
  ball = loadImage ("soccer ball.png");
  tiara = loadImage ("tiara.png");
  girl = loadImage ("girll.png");
  open = loadImage ("open.jpg");
  next = loadImage ("next.png"); 
  crying = new Movie(this, "Bubbles Crying Compilation.mp4");
  pencil = loadImage ("pencil.png"); 
  pencil.resize(200,200); 
  letter = loadImage ("letter.png"); 
  envelope = loadImage ("envelope.png"); 
  orn = loadImage ("orn.png"); 
}

void draw () {
  if (crying.available()) {

  }
  if (state == "intro") {
    intro(); 
  }
  else if (state == "scene1"){
    scene1();
  }
  else if (state == "scene2") {
    scene2();
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
  else if (state == "mailletter") {
    mailletter(); 
  }
  println(state);
  
  println(mouseX, mouseY); 
}



void intro () {
  background (background);
  fill(0);
  textSize(100);
  text ("The Girl", 320, 300);
  text ("and",420, 400);
  text ("The Gift", 320, 500);
  image(gift,460, 510); 
  gift.resize(100,100);
  if (mousePressed){
    if (mouseX>462 && mouseX <556 && mouseY < 605 && mouseY >511) {
      state = "scene1";
      
    }
  }
 }
  
 

void book() {
  background(back);
  image(book,50, 110);
  book.resize(900, 700);
}

void scene1 () {
  book();
   textSize(26);
   text ("There once was a girl who",120, 200);
   text ("recieved a gift.",120, 240);
   text ("Type in the gift you want",540, 200);
   text ("the girl to recieve on ", 540, 240);
   text ("the line.",540, 280);
   text (object, 545, 320);
   line (540, 325, 700, 325); 
    image (tiara, 720, 300);
    tiara. resize(150,150);
    image (bear, 620, 500);
    bear.resize(200,200);
    image (ball, 530, 400);
    ball.resize(130,130);
    image (girl, 170, 310);
    girl.resize(280,400);
    if (keyPressed) {
      if (key == ENTER){
        state = "scene2";
      }
    } 
   }
      
void keyPressed() {
  if (state == "scene1") {
  object += key; 
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
  //}
  //if (state == "name") {
  //name += key ;
  //}
  //if (state == "girlname") {
  //girlname += key ;
  //}
  //if (state == "relative") {
  //relative += key;

  
}
    

void scene2 () { //ball  
  book();
  text ("The girl opened the gift", 120, 180);
  text ("and saw that it was a" + " " + object , 120, 230);
  text ("She was so excited when she", 120, 320);
  text ("recieved her" + " " + object , 120, 360);  
  text ("She couldn't contain", 540, 200); 
  text ("her happiness!", 540, 240);
  text ("Click button to play video", 540, 650); 
  image(gift,170, 450); 
  gift.resize(270,270);
  image (next, 800, 680); 
  next.resize(100,100); 
  if (mousePressed) {
    if (mouseX>806 && mouseX<892 && mouseY<775 && mouseY>685){
    state = "happyletter";      
    }
  }
}

      
void happyletter () {
  gift1 = object; 
  book(); 
  text ("The girl loved the" + " " + gift1,120, 180);  
  text ("so much. She was",120, 220);
  text ("happy because Santa",120, 260); 
  text("gave her exactly what she",120, 300);
  text ("had asked for.", 120, 340);  
  text ("She decided to write Santa",120, 420);
  text ("a letter thanking him for", 120, 460);  
  text ("the" + " " + gift1, 120, 500);
  text ("Click on the pencil to",540, 180);
  text ("help her write her letter.",540, 220);
  image (pencil, 680, 500);
  image (letter, 540, 280); 
  letter.resize (200,240);
    if (mousePressed) {
    if (mouseX>686 && mouseX<875 && mouseY<671 && mouseY>517){
    state = "adj2";
    }
   }
  }
     
void blank (){
  background (back); 
  image (orn, 222,174); 
  orn.resize(600,670); 
  textSize (40); 
  text ("Fill in the blank", 372, 390 ); 
  text ("with an adjective to ", 350,441);
  text ("help complete her letter",299,497);
    line (384,630,647,630);
}



void adj2() {
  background (back); 
  image (orn, 222,174); 
  orn.resize(600,670); 
  textSize (40); 
  text ("Fill in the blank", 372, 390 ); 
  text ("with an adjective to ", 350,441);
  text ("help complete her letter",299,497);
  text (adj2,475,601); 
  line (384,630,647,630);
  //if (mouseX > 
  

  image (next, 800, 680); 
  next.resize(100,100); 
  if (mousePressed) {
  if (mouseX>806 && mouseX<892 && mouseY<775 && mouseY>685){
  state = "adj3";      
  }
  
  }
  //text ("verb:" + verb2, 30, 250);
  //text ("past tese adj:" + adj4, 30, 290);
  //text ("Reindeer name" + name,30, 310 );
  //text ("adjective:" + adj5,30, 350);
  //text ("relative:" + relative,30, 410);
  //text ("Girl's Name:" + girlname, 30, 440);

}
  

void adj3() {
  book();  
  blank();
  image (next, 863, 580); 
  next.resize(100,100); 
  text (adj3,475,601); 
  if (mousePressed) {
  if (mouseX>866 && mouseX<956 && mouseY<675 && mouseY>585){
  state = "adj4";    
  
   }
  }
}

void adj4 () { 
    background (back); 
  image (orn, 222,174); 
  orn.resize(600,670); 
  textSize (40); 
  text ("Fill in the blank", 372, 390 ); 
  text ("with an adjective to ", 350,441);
  text ("help complete her letter",299,497);
  text (adj4,475,601); 
  line (384,630,647,630);

  image (next, 800, 680); 
  next.resize(100,100); 
  if (mousePressed) {
  if (mouseX>806 && mouseX<892 && mouseY<775 && mouseY>685){
  state = "adj5"; 
   }
  }
   
  
}

void adj5 () {
  background (back); 
  image (orn, 222,174); 
  orn.resize(600,670); 
  textSize (40); 
  text ("Fill in the blank", 372, 390 ); 
  text ("with an adjective to ", 350,441);
  text ("help complete her letter",299,497);
  text (adj5,475,601); 
  line (384,630,647,630);
  image (next, 800, 480); 
  next.resize(100,100); 
  if (mousePressed) {
  if (mouseX>806 && mouseX<892 && mouseY<575 && mouseY>485){
  state = "verb2";    
  }
  }

}

void verb2 () {
  background (back); 
  image (orn, 222,174); 
  orn.resize(600,670); 
  textSize (40); 
  text ("Fill in the blank", 372, 390 ); 
  text ("with a verb to ", 426,441);
  text ("help complete her letter",299,497);
  text (verb2,475,601); 
  line (384,630,647,630);
  image (next, 800, 380); 
  next.resize(100,100); 
  if (mousePressed) {
  if (mouseX>806 && mouseX<892 && mouseY<475 && mouseY>385){
  state = "write"; 
  }
  }
  
}



  
void write () {
  newadj2 = adj2;
  newadj3 = adj3;
  newadj4 = adj4 ;
  newadj5 = adj5;
  newverb = verb2 ;
  background (back); 
  textSize(50); 
  text ("She decided to write a thank you",149, 70);
  text ("letter to Santa.", 337, 130);
  textSize(30); 
  text ("Here's the letter that you helped her create.", 221, 180); 
  image (letter, 125, 250);  
  letter.resize (800, 750); 
  text ("Dear Santa,", 242, 350); 
  text ("Thank you so much", 242, 400); 
  text ("for the" + " "+ newadj2 + " " + object, 242, 443); 
  text ("I am going to " + " " + newverb + " " +  " with my" + " " + object, 242, 490); 
  text ("all the time.", 242, 540);
  text ("It was so" + " " + newadj3, 242, 600);
  image (envelope, 800,800); 
  envelope. resize (200, 0);
  textSize (40); 
  text ("Press the envelope to send the letter to santa", 68, 920); 
  if (mousePressed) { 
    if (mouseX > 800 && mouseX< 997 && mouseY >804 && mouseY <901) {
      state = "mailletter"; 
    }
  }
}

void mailletter () {
  book(); 
  text ("vid of letter being sent to northpole", 150, 300); 
}

//santa will recieve the letter

//


  
  
  
  
  