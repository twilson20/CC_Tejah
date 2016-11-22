// pulling data from http://www.cdc.gov/nchs/pressroom/sosmap/firearm_mortality/firearm.htm 

// declare arrays for holding column data 

var states =  [];
var rates = [];
var deaths = [];

function preload () {
  firearms = loadTable ("firearms2014.csv", "header");
}

function setup() {
  createCanvas (1400, 800);
  background(255);
  // printing out data to the console
  
  // how many rows do you have ?
  console.log(firearms.getRowCount());
  
  // how many columns?
  console.log(firearms.getColumnCount());
  
  // printing the states
  console.log (firearms.getColumn("STATE")); // call by the header or by column number 
  
  //print out stats for california 
  console.log (firearms.get(4,0)); // 4th row, 1st column (starts at 0)
  console.log(firearms.get(4,1));
  console.log(firearms.get(4,2));

  //assign values to arrays for each colum in state 
  for (var i =0; i < firearms.getRowCount();i ++){
    states [i] = firearms.getString(i,0);
    rates [i] = firearms.getNum (i,1);
    deaths [i] = firearms.getNum (i,2); 
  }
  console.log(states[1]);
}


function draw() {
  // displaying the states 
  background (255);
  textSize(14);
  textAlign(CENTER);
  ellipseMode(CENTER);
  for (var i =0; i <states.length; i ++){
    text (states [i], i*27 + 27, height/2);
    ellipse(i*27+27, deaths[i],10,10);
  }
}






  