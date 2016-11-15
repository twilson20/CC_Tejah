// snow = http://pngimg.com/img/nature/snowflakes
// sun = http://www.pngall.com/sun-png
// cloud = http://www.clipartbest.com/cloud-png
// data = http://www.weather.gov/media/okx/Climate/CentralPark/monthlyannualtemp.pdf

var weather; //table and images 
var sun;
var cloud;
var snow;

function preload () {
  weather = loadTable("data.csv","header"); // loading the table and images 
  sun = loadImage("sun.png")
  cloud = loadImage("cloud.png")
  snow = loadImage("snow.png")
}

function setup() {
  createCanvas(800,800); 
  background(0);
  
  var row = weather.getRow(0); // get data from row 0 
  
  for (var i = 0; i < weather.getColumnCount(); i++) {
  var temp = row.getNum(i);
  console.log(temp);
  }
}

// function draw () {
//   var row = weather.getRow(0);
  
//   for (var i = 0; i < weather.getColumnCount(); i++) {
//   var temp = row.getNum(i);
//   if (temp < 35) {
//   image (snow, temp,temp,100,100);
//   }
//   if (temp >= 35 || i <= 60) {
//   image (cloud, temp, temp,100,100);
//   }
//   if (temp >  60) {
//   image (sun, temp, temp,100,100);
//   }
// }
// }

function draw () {
  var row = weather.getRow(0); //row with numbers 
  
  for (var i = 0; i < weather.getColumnCount(); i++) {
  var temp = row.getNum(i);
  if (temp < 35) {
  image (snow, temp,temp,100,100);
  }
  if (temp >= 35 || i <= 60) {
  image (cloud, temp, temp,100,100);
  }
  if (temp >  60) {
  image (sun, temp, temp,100,100);
  }
}
}


