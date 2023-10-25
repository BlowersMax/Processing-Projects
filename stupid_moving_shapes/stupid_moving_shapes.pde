void setup() {
  size(500, 500);
}

void draw() {
  background(#ffffff);

  for (int i = 0; i <= 6; i += 1) {
    fill(mouseX + 10, mouseX + 35, mouseY -15);
    rect(mouseX - 60, mouseY, 25, 25);
    rect(mouseX - 30, mouseY, 25, 25);
    rect(mouseX, mouseY, 25, 25);
    rect(mouseX + 30, mouseY, 25, 25);
    rect(mouseX + 60, mouseY, 25, 25);

    ellipse(mouseX + 10, mouseY + 50, 20, 20);
  }
}
