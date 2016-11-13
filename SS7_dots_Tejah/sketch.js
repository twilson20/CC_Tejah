// Dots, Tejah 
// The slider changes the x position of the circle


var y = 510; // circle starts off screen 
var x = 0;
var xslider;

function setup() {
  createCanvas (700, 700);
  background(0);
  xslider = createSlider(0, width, 0); // x position from 0 to 500 
  xslider.position(20, 20);// slider location 
}

function draw() {
    y = y -1;
    if (y < -20) { // when y reaches top of screen it starts over and goes back to the bottom 
    y = height;
  }
  circle ();
  fill (random(0,255));// circle color changes 
}
  
function circle () { // function for ellipse 
    ellipse(xslider.value(), y, 50,50);
}

