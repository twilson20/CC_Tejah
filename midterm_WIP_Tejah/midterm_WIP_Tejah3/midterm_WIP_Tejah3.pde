String state ="scene1";
PImage img1;
PImage img2;
PImage img3;
PImage img4;
int x=300;
int y =200;
int t= 50;
void setup () {
  size (800,800);
  img1 = loadImage ("pump1.gif");
  img2 = loadImage ("pump3.png");
  img3 = loadImage ("bat.png");
  img4 = loadImage ("skull.gif");
  cursor (img4,20, 20);
}

void rectangle () {
    fill (170,0,170);
    rect (460, 450, 200, 100);
  }
void draw () {
  if  (state == "scene1") { //state is scene 1,print the following 
    background (0); 
    fill(170,0,170);
    rectangle ();
    if (mouseX>width/6 && mouseX < width/6 + 200 && mouseY> 450 && mouseY<450 + 100) { //rectangle rollover hightlight 
      fill (0,0,255);
      rect (width/6,450, 200,100);
    }
     if (mouseX>460 && mouseX < 460 +200 && mouseY> 450 && mouseY <450 +100)  { // rectangle rollover highlight 
      fill (0,0,255);
      rect (460, 450, 200, 100);
    }
    
    if (mousePressed){
       if (mouseX>width/6 && mouseX < width/6 + 200 && mouseY> 450 && mouseY<450 + 100){ // if you press the left rectangle go to state 2
        println("mouse is over left rectangle");
        state = "scene2"; 
        
          if (state == "scene2") // when in state 2, if you press the left rectangle go to state 4, right rectangle go to state 5
          background (186,85,211);
          textSize (50);
          fill (0);
          text ("Decorate your own pumpkin!",60,150); 
          strokeWeight (10);
          stroke(0);
          fill (0);
          img2.resize (0,400);
          image (img2, 130,325);
          fill (139,0,139);
         rect (80, 250, 200, 100);
         rect (500, 250, 200, 100);
         fill (0);
       
       }else if (mouseX>460 && mouseX < 460 +200 && mouseY> 450 && mouseY <450 +100) { // else if you press the right rectangle go to state 3 
         println("mouse is over right rectangle");
         state = "scene3";
    } 
         if (state == "scene3") {
         background (176,65,65);
         textSize (50);
         fill (0);
         text ("Decorate your own bat!",115,150); 
         strokeWeight (10);
         stroke(0);
         fill (0);
         image (img3, 100, 300);
         img3.resize (10,10);
         fill (0);
         rect (80, 625, 200, 100);
         rect (530, 625, 200, 100);
         fill (0);
         
             
        if (state=="scene3"){
 
           
         }
         }
     
         }
    }
  
         if (mousePressed) {
         if (state == "scene2")
         if (mouseX>80 && mouseX<280 && mouseY < 350 && mouseY >250) {
             fill (0);
             rect (80, 250, 200, 100);
             state = "scene4";
      
               if (state == "scene4");
               background (0,50,150);
               img2.resize (0,400);
               image (img2, 130,325);
               textSize (50);
               strokeWeight (10);
               text ("Drag the eyes to the pumpkin!",30,150);
               ellipse (100, 200, 10,10);
               ellipse (160, 300, 10,10);
               ellipse (x,y, t,t);
               //ellipse (300, 200, 50, 50);
               ellipse (380, 320, 50, 50);
               triangle(30, 75, 58, 20, 86, 75);
               triangle (500,300, 520, 250, 540, 300);
               triangle (700, 750, 730, 690, 760, 750);
               triangle (400,200, 420,120,440,200);
         }

             else if (mouseX>500 && mouseX< 800 && mouseY < 350 && mouseY>250) {
             state = "scene5";
         
             if(state == "scene5");
             background (120,130,50);
             textSize (22);
             strokeWeight (10);
             text ("Choose a mouth shape, and other random features for your pumpkin!",30,150);
             }
        
         }
         if (mousePressed); { //scene 4 mouse is over the large rectangle 
         if (state == "scene4")
         if (mouseX> 275 && mouseX<330 && mouseY >170 && mouseY <230)
                  println("mouse is over top large circle");
         }
         println (state);
     }
  