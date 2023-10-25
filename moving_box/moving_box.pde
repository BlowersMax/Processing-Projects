void setup() {
  size(500, 400);
}

int number = -100;
int number2 = -100;

void draw() {
  background(200);
  fill(100, 200, 255);
  rect(number, 80, 100, 100);
  number = number + 1;
  rect(number2 * 2, 220, 100,100);
  number2 = number2 + 1;
}
