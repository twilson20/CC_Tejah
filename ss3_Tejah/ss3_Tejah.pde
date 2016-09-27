//Colors, Tejah 
float x =0 ;
float r= 0;
float g = 0;
float b = 0; 
float a = 0;
float c= 0;
float d =0;

void setup() {
  size(800,800);
  background(0);
} 

void draw () {

  for (x=0; x<width;x=x+20) {
  line (x, 0 , x, height);
    stroke (r,g,b);
   r = random (0,255);
   g= random (0,255);
   b = random (0,255);
  }
  if (keyPressed) {
    fill (255);
  rectMode (CENTER);
  rect (a,c, 10,10);
  rect (d, d, 10, 10);
  a=a+20;
  c=c+20;
  d=d-20;
  }
  if (mousePressed) {
    fill(0);
    ellipse (a,c, 50,50);
    ellipse (d, d, 50,50);
   a=a-20;
   c=c-20;
   d=d+20;
  }
if (mouseX > 500 && mouseY < 350 && mouseY >100 && mouseX<700) {
    fill (30, 230, 200);
    ellipse(600,200, 250,250);
}else{
    fill (0);
    ellipse(600,200, 250,250);
}if (mouseX>75 && mouseX<325 && mouseY<750 && mouseY>465) {
  fill (218,112,214);
  ellipse(200,600,250,250);
}else {
  fill(0);
    ellipse(200,600,250,250);
}
  
}
    