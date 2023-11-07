class Die {//models one single dice cube
  int faces;
  int current; //value of upperfacing side
  int r, g, b, a, x, y;

  Die() { //constructor
    faces = 6;
    r = 255;
    g = 105;
    b = 180;
    a = 80;
    x = 10;
    y = 10;
    current = 0;
  }
  int roll() {
    int retval;
    retval = (int)(Math.random()*6)+1;
    return retval;
  }
  void show() {
    System.out.print(current + " ");
  }

}
