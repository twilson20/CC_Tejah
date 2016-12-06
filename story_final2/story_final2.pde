import processing.video.*;
//Images 
PImage book;
PImage background; 
PImage mat;
PImage bg;
PImage gift; 
PImage ball;
PImage tiara;
PImage bear; 
PImage girl; 
PImage open;
PImage next; 
PImage pencil;
PImage letter; 
PImage envelope; 
PImage back;
PImage orn;
PImage back1;
PImage back2; 
PImage back3; 
//Strings 
String state = "intro";
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
  //crying = new Movie(this, "Bubbles Crying Compilation.mp4");
  pencil = loadImage ("pencil.png"); 
  pencil.resize(200,200); 
  letter = loadImage ("letter.png"); 
  envelope = loadImage ("envelope.png"); 
  orn = loadImage ("orn.png"); 
  back1 = loadImage ("christmas1.jpg");
  back2 = loadImage ("christmas2.jpg");
  back3 = loadImage ("christmas3.jpg");
}


void draw () {
//  if (crying.available()) {

//}
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
  else if (state == "getletter") {
    getletter(); 
  }
  else if (state =="recieveletter"){
    recieveletter();
  }
  else if (state == "dinner") {
    dinner(); 
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
   text (gift1, 545, 320);
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
}
    

void scene2 () { //ball  
  book();
  text ("The girl opened the gift", 120, 180);
  text ("and saw that it was a" + " " + gift1 , 120, 230);
  text ("She was so excited when she", 120, 320);
  text ("recieved her" + " " + gift1 , 120, 360);  
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
  background (back1); 
  image (orn, 222,174); 
  orn.resize(600,670); 
  textSize (40); 
  text ("Fill in the blank", 372, 390 ); 
  text ("with an adjective to ", 350,441);
  text ("help complete her letter",299,497);
  text (adj2,475,601); 
  line (384,630,647,630);
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
  background(back2);
  image (orn, 222,174); 
  orn.resize(600,670); 
  textSize (40); 
  text ("Fill in the blank", 372, 390 ); 
  text ("with an adjective to ", 350,441);
  text ("help complete her letter",299,497);
  text (adj4,475,601); 
  line (384,630,647,630);
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
  background (back3); 
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
  text ("for the" + " "+ adj2 + " " + object, 242, 443); 
  text ("I am going to " + " " + verb2 + " " +  " with my" + " " + object, 242, 490); 
  text ("all the time.", 242, 540);
  text ("It was so" + " " + adj3, 242, 600);
  image (envelope, 800,800); 
  envelope. resize (200, 0);
  textSize (40); 
  text ("Press the envelope to send the letter to santa", 68, 920); 
  if (mousePressed) { 
    if (mouseX > 800 && mouseX< 997 && mouseY >804 && mouseY <901) {
      state = "getletter"; 
    }
  }
}

void mailletter () {
  book(); 
  text ("vid of letter being sent to northpole", 150, 300); 
}

void getletter() {
  book();
  //left page 
  textSize(30); 
  text ("After a long journey",120, 180); 
  text ("to the north pole. Santa", 120, 220);
  text("finally recieved the girl's",120, 260);
  text("letter.",120, 300);
  text ("'Ho!Ho!Ho! What a sweet", 120, 360); 
  text ("girl'. He said d",120, 420);
  text ("to himself.", 120, 460); 
  //right page
  text ("'Well... I am glad you", 540, 180); 
  text ("enjoyed your " + gift1 + ".'", 540, 220); 
  text ("Santa quickly got one", 540, 260);
  text ("of the elves to bring", 540, 300); 
  text ("him a pencil and paper.", 540, 340); 
  text ("'I am going to write",540, 380);
  text ("this young girl", 540, 420);
  text ("a letter.'",  540, 460); 
  image (next, 800, 680); 
  next.resize(100,100); 
  if (mousePressed) {
  if (mouseX>806 && mouseX<892 && mouseY<775 && mouseY>685){
  state = "recieveletter";
  }
 }
}

void recieveletter () {
  book(); 
  text("The next morning when",120, 180);
  text("the girl rolled out of bed",120, 220);
  text("she noticed a letter ", 120, 260);
  text("resting on her bedside.",120, 300);
  //left page
  text ("She couldn't believe who", 540, 180); 
  text ("it was from!", 540, 220);
  text ("'SANTA!' She exclaimed.", 540, 300); 
  image (next, 800, 680);
  next.resize(100,100); 
  if (mousePressed) {
  if (mouseX>806 && mouseX<892 && mouseY<775 && mouseY>685){
  state = "dinner";
}
  }
}

void dinner () {
  book(); 
  text ("Later on at the dinner ", 120, 180); 
  text ("table the girl told her", 120, 220); 
  text ("family about the letter", 120, 260);
  text ("Santa wrote to her.", 120, 300); 
  text ("'Santa wrote me a letter!", 120, 380); 
  text ("He wrote me a letter!'",120, 420);
    //right page 
  text ("But no one believed her", 540, 180);
  text ("They didn't believe that Santa",540, 220); 
  text ("was real.", 540, 300); 
  image (next, 800, 680);
  next.resize(100,100); 
  if (mousePressed) {
  if (mouseX>806 && mouseX<892 && mouseY<775 && mouseY>685){
  state = "recieveletter";

   }
  }
}