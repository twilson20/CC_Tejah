// snow = http://pngimg.com/img/nature/snowflakes
// sun = http://www.pngall.com/sun-png
// cloud = http://www.clipartbest.com/cloud-png
// data = http://www.weather.gov/media/okx/Climate/CentralPark/monthlyannualtemp.pdf

var weather; //able and images 
var sun;
var cloud;
var snow;

function preload () {
  weather = loadTable("data.csv"); // loading the table and images 
  sun = loadImage("sun.png")
  cloud = loadImage("cloud.png")
  snow = loadImage("snow.png")
}

function setup() {
  createCanvas(2000,1800); 
  background(0);
  for (var i = 0; i < weather.getRow(); i++) {
  var temp = weather.get(0);
  }
}

function draw () {
  for (var i = 0; i < weather.getRowCount(); i++) {
  var temp = weather.getRow(0);
  if (i < 35) {
  image (snow, i, i);
  snow.resize(100,100);
  } else if (i >= 35 && i <= 60) {
  image (cloud, i, i );
  cloud.resize (100,100);p
  } else if (i >  60) {
  image (sun, i, i );
  sun.resize(100,100);
  }
}
}
