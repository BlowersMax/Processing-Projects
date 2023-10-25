void setup() {
  size(410, 200);
}

int j = 0;

void draw() {
  j = 1;
  for (int i = 10; i < 400; i += 50) {
    fill(0, i, 0);
    rect(i+10, j*10, 40, j*20);
    j = j + 1;
  }
}
