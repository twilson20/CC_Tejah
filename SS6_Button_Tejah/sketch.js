//Tejah Wilson, Button
// When you click the red button, the background changes
// Press red button to make the background change color 

//I got the code from http://coursescript.com/notes/interactivecomputing/interactivity/
// in order to change the background image color when button is clicked 
// polaroid image came from hrere http://www.polaroid.com/history

var polaroid;
var button;
var c;
var fuji;
var value = 0.1;

function preload () {
  polaroid = loadImage ('polaroid.png')
  //fuji = loadImage ('fuji.png')
  }
  

function setup() {
  createCanvas (500,500);
c = color(0,0,0);
}

function draw() {
  background(c);
  //image(fuji, 0,0,width, height)
  image(polaroid,0,0, width, height);
  if (mouseX >= 78 && mouseX <=140 && mouseY <= 230 && mouseY>200-30) {
    button = true;
  }else {
    button = false;
  }
  redbutton;
  fill(30);
  ellipse (384,198,27,27);
}

function mousePressed () {
  if (button === true) {
  c = (color(random(255), random(255), random(255)));
  //fill (130,40,20);
  //ellipse (384,198,27,27);
  
  }
}

function redbutton () {
  fill (210,20,30);
  ellipse(107,200,58,58);
}


