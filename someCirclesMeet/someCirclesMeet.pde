/*
Hanaan Shafi
 Assigment #2
 May 27
 Version 1
 */


// setting up canvas
void setup() {
  size(500, 500);
  background(0, 0, 0); 
}

// initializing variables related to the color
int r = 0;
int g = 0;
int b = 0;

// initializing variables related to the coordinates and radius of the circles to be drawn
int R = 700;
int x = 0;
int y = 250;

// drawing!
void draw() {
  //while loop to keep drawing smaller and smaller circles as long as the radius is greater than zero
  while (R > 0) {  
    R = R - 50; //decrease radius
    r = r + 12; //increase redness
    fill(r, g, b); //color circle
    circle(x, y, R); //draw circle
  }

  x = 500; //change center of circle to the other side of canvas
  R = 600; //radius of biggest circle (the first one to be drawn)
  r = 0; //reset colors back to black
  g = 0;
  b = 0;
  while (R > 0) {  //draw circles
    R = R - 50;
    g = g + 12; //this time, increase greenness
    fill(r, g, b);
    circle(x, y, R);
  }
}
