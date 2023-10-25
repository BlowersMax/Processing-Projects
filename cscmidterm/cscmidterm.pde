void setup() {
  size(500, 500);
  background(255);
}
void draw() {
  for (int i = 25; i >= 0; i--) {
    fill(i * 10, 0, 255 - 10 * i);
    ellipse(width / 2, height / 2, i * 30, i * 30);
  }
}
