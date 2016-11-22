// snow = http://pngimg.com/img/nature/snowflakes
// sun = http://www.pngall.com/sun-png
// cloud = http://www.clipartbest.com/cloud-png
// data = http://www.weather.gov/media/okx/Climate/CentralPark/monthlyannualtemp.pdf

var weather; //table and images 
var sun;
var cloud;
var snow;
var data = [];
function preload () {
  weather = loadTable("data.csv","header"); // loading the table and images 
  sun = loadImage("sun.png")
  cloud = loadImage("cloud.png")
  snow = loadImage("snow.png")
}

function setup() {
  createCanvas(1400,700); 
  background(0);

  var row = weather.getRow(0); // get data from row 0 
  var labels = weather.getRow(1);
  console.log(weather.getRowCount());
  for (var i = 0; i < weather.getColumnCount(); i++) {
  var temp = row.getNum(i);

  console.log(temp);
  }
}

function draw () {
  textSize(30);
  var row = weather.getRow(0); //row with numbers 
  var labels = weather.getRow(1);
  fill (255);
  text (labels.getString(12)+ " " + row.getNum(12), 30, 200);
  text ("Average Monthly Temperature: Central Park 2015",300 , 100)
  for (var i = 0; i < weather.getColumnCount()-1; i++) {
  var temp = row.getNum(i);
  var x = 20 + 100 * i ;
  var y = 500 - 3 * temp;
  if (temp < 35) {
  image (snow,x ,y,100,100);
  }
  if (temp >= 35 && temp <= 60) {
  image (cloud, x, y,100,100);
  }
  if (temp >  60) {
  image (sun, x, y,100,100);
  }
  text (labels.getString(i),x+23,600);
  }
}



