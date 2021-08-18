class Circles {

  int x;
  int y;
  int R;

  Circles (int temp1, int temp2, int temp3) { 

    x = temp1;
    y = temp2;
    R = temp3;
  }

  void concentricCircles() { 
    while (R > 0) {
      R = R - 10; //as the radius decreases, newer circles of random colors are drawn
      fill(random(255), random(255), random(255));
      circle(x, y, R);
    }
  }
}
