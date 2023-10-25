void setup() {
  size(300, 300);
}

void draw() {
  strokeWeight(5);
  fill(100, 200, 100);
  rect(0, 0, 100, 300);
  fill(100, 200, 100);
  rect(100, 0, 100, 300);
  fill(100, 200, 100);
  rect(200, 0, 100, 300);

  if (mouseX < 100) {
    fill(50, 100, 50);
    rect(0, 0, 100, 300);
  } else if (mouseX < 200) {
    fill(50, 100, 50);
    rect(100, 0, 100, 300);
  } else {
    fill(50, 100, 50);
    rect(200, 0, 100, 300);
  }
}
