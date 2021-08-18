/* Hanaan Shafi
 June 3
 Artwork Using Transformations & Classes: This work builds on the previous work 
 concentric circles of random colors. In this piece, a set of concentric circles move around in a circle, 
 changing their color.
 */

Circles c1;

//setting up
void setup() {
  background(0, 0, 0);
  size(500, 500);
}

void draw() {
  c1 = new Circles(50, 50, 150);
  if (frameCount % 10 == 0) { 
    pushMatrix();
    translate(250, 250);
    rotate(radians(frameCount * 2  % 360));
    c1.concentricCircles();
    popMatrix();
  }
}
