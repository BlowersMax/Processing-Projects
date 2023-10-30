void setup() {
  size(500, 500);
}

int x = 100;
int y = 10;

void stupidTree(int x, int y) {
  noStroke();
  fill(140, 100, 100);
  rect(x-10, y+140, 20, 40);
  fill(100, 220, 100);
  triangle(x, y+70, x+70, y+150, x-70, y+150);
  triangle(x, y+30, x+55, y+100, x-55, y+100);
  triangle(x, y, x+40, y+50, x-40, y+50);
}

void draw() {
  background(50, 140, 250);
  stupidTree(100, 10);
  stupidTree(224, 100);
}
