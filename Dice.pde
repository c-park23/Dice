Die aDie;
int x, y;
int rows = 4;
int cols = 5;
int mult = 100;  //  pixel coordinate scale for x and y
int off = 50;    // offset between rows and cols
float wid = 75;  // width of shape
float hgt = 75;  // height of shape
float inc = .05;
int r, g, b, a;

int total = 0;
void setup() {
  size(600, 400);//window size
  aDie = new Die();
  noLoop();
  r = 255;
  g = 105;
  b = 180;
  a = 80;
}
void draw() {
  background(100);
  total = 0;
  for (int y = 0; y < rows; y++) { // y coordinate for cols loop
    for (int x = 0; x < cols; x++) { // x coordinate for rows loop
      aDie.current = aDie.roll();
      total += aDie.current;
      aDie.show();
      drawit(x, y);
    }
    System.out.println(); 
  }
  System.out.println(total);
  textSize(16);
  fill(0, 20, 230);
  text("total "+total, 530, 300);
}
void drawit(float x, float y) {
  fill(r, g, b, a);
  rect(x*mult+off, y*mult+10, wid, hgt);
  textSize(40);
  fill(0, 255, 40);
  text(aDie.current, x*mult+75, y*mult+50);
}
