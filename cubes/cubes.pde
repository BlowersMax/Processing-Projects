//
// Author: Max Blowers
// Description:
//    A silly little fun game to play when you're extremely bored.
// URL: maxblowers.dev/
//

// Setup the application
void setup() {
  size(500, 500);
  // background(#2BACEA);
  makeTiles();
}

// the stuff that calls the lame functions
void draw() {
  drawCircle();
}

// the logic that draws the fancy schmancy tiles (drawn L2R)
void makeTiles() {
  fill(#2D86B2);
  stroke(#2BACEA);
  strokeWeight(5);
  // first row
  for (int i = 0; i <= 5; i += 1) {
    rect(i*100, 0, 100, 100);
  }
  // 2nd row
  for (int i = 0; i <= 5; i += 1) {
    rect(i*100, 100, 100, 100);
  }
  // 3rd row
  for (int i = 0; i <= 5; i += 1) {
    rect(i*100, 200, 100, 100);
  }
  // 4th row
  for (int i = 0; i <= 5; i += 1) {
    rect(i*100, 300, 100, 100);
  }
  // 5th row
  for (int i = 0; i <= 5; i += 1) {
    rect(i*100, 400, 100, 100);
  }
}

void drawCircle() {
  // ints for moving
  int circlePosX = 50;
  int circlePosY = 50;
  fill(#FFA148);
  if (keyPressed == true) {
    if (key == 's') {
      circlePosY += 100;
    } else {
      return;
    }
  } else {
    return;
  }

  ellipse(circlePosX, circlePosY, 75, 75);
}
