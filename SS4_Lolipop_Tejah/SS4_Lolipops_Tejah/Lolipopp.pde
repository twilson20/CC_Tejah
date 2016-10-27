class Lolipopp {

  int a; 
  int b;
  int c;
  int d;
  int r;
  int g;
  int u;

  Lolipopp (int tempa, int tempb, int tempc, int tempd, int tempr, int tempg, int tempu) {
    a =tempa;
    b=tempb;
    c=tempc;
    d=tempd;
    r = tempr;
    g = tempg;
    u = tempu;
  }
  void display () { //this method displays the lolipops
    fill(r, g, b);
    ellipse (a, b, c, d);
    stroke(0); 
    line (a, b + 25, a, d +300 );
  }
  void move () { //this method moves the lolipops from left to right 
    a  += speed * direction;
    if (a > width+200) { //when the lolipops are off the screen
      a = -30; // the lolipop enters through the left
    }
  }
}