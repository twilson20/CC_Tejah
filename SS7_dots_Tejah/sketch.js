var y = 510;
var x = 0;
var xslider;
var ccolor;

function setup() {
  createCanvas (500, 500);
  background(0);
  xslider = createSlider(0, 500, 0);
  xslider.position(20, 20);
}

function draw() {
    y = y -1;
    if (y < -20) {
    y = height;
    x  = random(0,500);
  }
  circle ();
  fill (random(0,255));
}
  
function circle () {
    ellipse(xslider.value(), y, 30,30);
}

