float direction = 1;
int speed  = 1;
int a = 0;
int b = 0;
int c = 0;
int d =0;
int g = 0;
int u = 0;
int r = 0;

Lolipopp [] lolipops= new Lolipopp[10];

void setup() {
  size (600, 600); 

  for (int i =0; i<10; i++) {
    lolipops[i] = new Lolipopp(int(random(width)), int (random(height)), 200, 250, 200, 60, 50 );
  }
}

void draw () {
  background (0, 0, 150);
  for (int i=0; i < 10; i ++) {
    lolipops[i].display();
    lolipops[i].move(); 
  }
}