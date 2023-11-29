void setup () {
  size(300, 200);
  textSize(50);
  frameRate(1);
  randomSeed(5);
}

void draw () {
  background(100);
  // define a variable of type float named r
  // and use random() to assign it a value between
  // 0 and 100 (but not including 100)

  float r = random(0, 100);
  int r2 = int(r);

  text(r, 25, 110);
  text(r2, 25, 150);
}
