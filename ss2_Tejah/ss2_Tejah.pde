//Night, Tejah 
//keypressed - the lights on 3 of the windows flash
//keypressed - you can add stars to the sky 
//mousepressed - the background goes back to black, with no stars 
float fill=2;
float change= 5;
float value=0.1;
float size = 0; 


void setup() {
size(1080,720);
background(0);
}

void draw () {
strokeWeight(10); //for the first two rect
fill(40);
rect(10,50,300,650);//rectangle 
fill(120,120,0);
rect(15, 55, 50, 100);//window
rect(100, 165, 50, 100);//window
rect(15, 200, 50, 150);//window
strokeWeight(10); //for the middle line 
fill(35);
rect(158,55,60,90);
fill(10,60,230);//blue window 
rect(305, 150, -50, 90);
fill(120,120,0);
rect(200, 300,50,90);
strokeWeight(7);
line(157,50,157,700);//line dividing first rectangle to create two different rectangles 
strokeWeight(10); 
//second rectangle from the right
fill(55);
rect(310,100,200,600);
fill(130,130,0);
rect(315, 200, 70, 80);
fill(40);
rect(505, 150, -70, 80);
fill(40);
rect(400, 300, 65, 90);
//third rect 
strokeWeight(10);
fill(70);
rect(510,200,245,500);
fill(140,140,0); 
rect(530, 250, 80, 100);
fill(10,70,200);
rect(650, 350, 80, 100);
//forth rect/last rect 
strokeWeight(12);
fill(88);
rect(755,150,300,550);
fill(120,120,0);
rect(780, 205, 100, 100);
fill(120,120,0);
rect(900, 330, 140, 150);

 
}

void mousePressed() {  
  draw ();
  
  fill(fill + value);
  rect(305, 150, -50, 90);
  
  fill(fill +value);
  rect(900, 330, 140, 150);

  fill(fill +value);
  rect(200, 300,50,90);

  fill(fill +value);
  rect(530, 250, 80, 100);

  
  //add stars, dots, everytime the key is pressed to a specidic point 
  
  fill(255,255,0);
  ellipse(mouseX, mouseY, 5,5);
  
  }

void keyPressed(){
  //background(40,50,150);
  background(0);
 
}
 