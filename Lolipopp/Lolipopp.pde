float direction = 1;
int speed  = 1;
int a = 0;
int b = 0;
int c = 0;
int d =0;
int g = 0;
int u = 0;
int r = 0;

//Lolipopp [] lolipops= new Lolipopp[3]; //array 
Lolipopp lolipop1;
Lolipopp lolipop2;
Lolipopp lolipop3; 
Lolipopp lolipop4;

void setup() {
  background (0, 0, 150);
  size (600,600); 
  //lolipops[3] = new Lolipopp (a,  b, c, d, r, g,  u); //array?
  lolipop1 = new Lolipopp (40, 40, 200, 250,200,60,50); 
  lolipop2 = new Lolipopp (100, 200, 200, 300,30,70,50); 
  lolipop3 = new Lolipopp (200, 300, 150, 250, 150, 123, 80);
  lolipop4 = new Lolipopp (300, 200, 150, 200, 70, 30, 50); 

}


void draw () {
lolipop1.display (); //displays lolipop 
lolipop1.move(); //moves lolipop 
lolipop2.display();
lolipop2.move ();
lolipop3.display ();
lolipop3.move();
lolipop4.display();
lolipop4.move();
//lolipops[0].display (); array ?
//lolipops[0].move ();
//lolipops[1].display ();
//lolipops[1].move ();
//lolipops[2].display ();
//lolipops[2].move ();
//lolipops[3].display ();
//lolipops[3].move();
}





 

 