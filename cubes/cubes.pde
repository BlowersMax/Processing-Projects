//
// Author: Max Blowers
// Description:
//    A silly little fun game to play when you're extremely bored.
// URL: maxblowers.dev/
//

// Setup the application
void setup() {
  size(500, 500);
  background(#2BACEA);
}

// variables that are needed to ensure that things work
int circlePos = 0;

// the stuff that calls the lame functions
void draw() {
  makeTiles();
}

// the logic that draws the fancy schmancy tiles (drawn L2R)
void makeTiles() {
  stroke(#2BACEA);
  fill(#2D86B2);
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
