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
Boolean sent = true;
PImage open;
PImage next; 
PImage pencil;
PImage letter; 
PImage envelope; 

void setup (){
  book = loadImage("book.png");
  size (1000, 1000);
  mat = loadImage("mat.jpg");
  background = loadImage ("background1.jpg"); 
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
  letter = loadImage ("le.png"); 
  envelope = loadImage ("envelope.png"); 
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
  else if (state == "sadscene") {
    sadscene();
  }
  else if (state == "sadletter"){
    sadletter(); 
  }
  else if (state  == "write"){
    write(); 
  }
}
  
  //background(mat);
  //book.resize (900, 700);
  //image (book, 50,110);
  //textSize(26);
  //text("There was once a girl who...", 120, 200); 
  //fill(0);


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
    if (mouseX>460 && mouseX <300 && mouseY < 510 && mouseY >600) ;
      state = "scene1";
  }
  }

void book() {
  background(background);
  image(book,50, 110);
  book.resize(900, 700);
}

void scene1 () {
  book();
  //scene1text();
      //if (counter < text1.length()) ;{
      //counter++;
      //textSize(26);
      //text(text1.substring(0, counter), 120, 200, width, height);
   textSize(26);
   //if (sent == true) {
   text ("Which gift do you want",540, 200);
   text ("There once was a girl who",120, 200);
   text ("recieved a gift.",120, 240);
   text ("the girl to recieve?", 540, 240);
    image (tiara, 720, 300);
    tiara. resize(150,150);
    image (bear, 620, 500);
    bear.resize(200,200);
    image (ball, 530, 400);
    ball.resize(130,130);
    image (girl, 170, 310);
    girl.resize(280,400);
    if (mousePressed) {
      if (mouseX > 530 && mouseX<630 && mouseY<500 && mouseY>400) {
        state = "scene2";
      }
    }
   
   }
      
   
//void mouseClicked (){
// if (state == "scene1"){
//   if (mouseX > 530 && mouseX<630 && mouseY<500 && mouseY>400) {
//     sent = false;
//       text ("Did the girl hate the gift or love it?", 120, 200);
//       text ("Yes", 200, 300);
//       text ("No", 300, 300);
//   }
// }
//}

void scene2 () { //ball  
  book();
  text ("She opened the box", 120, 180);
  text ("and saw that it was a ball.", 120, 230);
  text ("Does she hate it or love it??",120, 280); 
  text ("Choose one", 210, 400);
  text ("Yes", 230, 470);
  text ("No", 330,470); 
  if (mousePressed) {
    if (mouseX > 330 && mouseX<350 && mouseY<470 && mouseY>430) {
    state = "sadscene";      
}

  }
}

void sadscene () {
  book();
  image(crying, 270, 320);
  crying.read(); 
  crying.play();
  text ("This is how sad the girl is    about her gift she recieved.", 160, 270); 
  crying.play(); 
  image (next, 800, 680); 
  next.resize(100,100); 
}
    void mousePressed() {
       if (mouseX>800 && mouseX<950 && mouseY<900 && mouseY<850){
         crying.stop();
         state = "sadletter";
       }
    }
      
void sadletter () {
  book(); 
  text ("The girl hated the gift",120, 180);  
  text ("so much. She was",120, 220);
  text ("disappointed because Santa",120, 260); 
  text("didn't give her what she",120, 300);
  text ("had asked for. She", 120, 340);  
  text ("decided to write Santa",120, 380);
  text ("a letter asking him why", 120, 420);  
  text ("he didn't get her what", 120, 460);
  text ("she wanted.",120, 500);
  text ("Click on the pencil to",540, 180);
  text ("help her write her letter.",540, 220);
  image (pencil, 680, 440);
  image (letter, 540, 280); 
  letter.resize (200,240);
  //text ("Help her write her letter to Santa");
  //text ("Fill in the blanks and click");
  //text ("when the letter is complete");
    if (mousePressed) {
      if (mouseX>680 && mouseX<900 && mouseY<440 && mouseY>360);
      state = "write";
      
}
}

void write () {
  background (background); 
  textSize(50); 
  text ("Help the girl write her letter", 200, 100);
  textSize(30); 
  text ("click the envelope when done to send the letter to Santa", 150, 180); 
  image (letter, 230, 200);  
  letter.resize (600, 750); 
  image (envelope, 800,800); 
  envelope. resize (200, 0);
}





  
  
  
  
  