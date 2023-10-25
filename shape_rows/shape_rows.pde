//
// Author: Max Blowers
// Description:
//   Rows of fun shapes :)
//

void setup() {
  size(500, 500);
}

void draw() {

  // Ellipses
  for (int i = 0; i <= 5; i += 1) {
    fill(25, 100, i*75);
    ellipse((i*100) + 50, 50, 45, 45);
  }

  // Triangles
  for (int i = 0; i <= 10; i += 1) {
    fill(i*25, 25, 175);
    triangle((i*40) + 25, 225, (i*40)+ 55, 225, (i*40) + 40, 150);
  }

  // Rectangles
  for (int i = 0; i <= 5; i += 1) {
    fill(25, i*65, 100);
    rect((i*75) + 20, 300, 30, 65);
  }
}
