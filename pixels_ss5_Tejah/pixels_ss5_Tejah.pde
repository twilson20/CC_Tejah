//Pixels
//Tejah 
//Press the spacebar and the pixels form into one color
//This Short Study plays around with the camera and pixels

import processing.video.*;
Capture left;
int col, row;
int grid = 10;
int x =0;
int y= 0;
void setup () {
  size (848, 480); 
  left = new Capture(this, 848,480,30);
  left.start (); 
  col = (width/2)/grid;
  row = height;
  background(0);
}
void captureEvent (Capture left) { 
    left.read();
    
}


void draw () {
     left.loadPixels (); // This turns the image into pixels
     for (int w = 0; w < col; w ++) {
        for (int h = 0; h < row ; h ++) {
      int x = w *grid; 
      int y = h *grid;
      rect (x, y, width/2, height);     
      stroke(0);
        if (keyPressed) { // if the key is pressed the pixels form into one color
         color d = left.pixels[w + w*left.height];
         fill (d);     
       }else {
       color c  = left.pixels[h + w*left.height];
       fill (c);                                                                                                                                                                                                                                                                                          
     }
    }
   }
  }