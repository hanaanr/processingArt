/*
Hanaan Shafi (hrs363)
Assignment #3
May 31
*/

//setting up
void setup() {
  background(0, 0, 0);
  size(1000, 1000);
  frameRate(10);
}

void draw() { 
  //calling the functions I defined below to draw the artwork 
  parallelLines(50, 100, 700, 900);
  concentricCircles(425, 425, 200);
  concentricCircles(600, 425, 200);
  concentricCircles(425, 600, 200);
  concentricCircles(600, 600, 200);
}

//creating a function to draw concentric circles
void concentricCircles(int x, int y, int R) { //x and y are the coordinates and R is the radius
  while (R > 0) {
    R = R - 10; //as the radius decreases, newer circles of random colors are drawn
    fill(random(255), random(255), random(255));
    circle(x, y, R);
  }
}

//creating a function to draw parallel lines
void parallelLines(int x1, int y1, int x2, int y2) { //these stand for the coordinates of the beginning and the end points of the line
  int i = 0; 
  while (i < 20) { //i determines the number of lines that will be drawn 
    i = i + 1;
    stroke(random(255), random(255), random(255)); 
    line(x1, y1, x2, y2);
    x1 = x1 + 10; //changing the x coordinates so the new lines are drawn next to the previous one
    x2 = x2 + 10;
  }
}
