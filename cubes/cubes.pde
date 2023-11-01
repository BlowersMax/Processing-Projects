//
// Author: Max Blowers
// Description:
//    A silly little fun game to play when you're extremely bored.
// URL: maxblowers.dev/
//

// Setup the application
void setup() {
  size(500, 500);
  makeTiles();
}

int circlePosX = 50;
int circlePosY = 50;

// the stuff that calls the lame functions
void draw() {
  makeTiles();
  drawSqurs();
  drawCircle();
  checkCircle();
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

// draws starting, ending, and middle squares
void drawSqurs() {
  fill(#EACE2B);
  rect(100, 200, 100, 100);
  rect(300, 200, 100, 100);
}

// Make sure the circle doesn't do stuff its not supposed to
void checkCircle() {
  if (circlePosX > 450) {
    circlePosX = 450;
  } else if (circlePosX < 50) {
    circlePosX = 50;
  } else if (circlePosY > 450) {
    circlePosY = 450;
  } else if (circlePosY < 50) {
    circlePosY = 50;
  } else if (circlePosX == 350 && circlePosY == 250) {
    println("Right Square");
  } else if (circlePosX == 450 && circlePosY == 450) {
    // DEBUG: println("You Win!");
    fill(#F70C30);
    textSize(75);
    text("You Win!", 125, 250);
  }
}

// Draw the circle
void drawCircle() {
  fill(#FFA148);
  ellipse(circlePosX, circlePosY, 75, 75);
}


// Listen and move character across screen
void keyPressed() {
  if (key == 's') {
    circlePosY += 100;
  }
  if (key == 'w') {
    circlePosY -= 100;
  }
  if (key == 'a') {
    circlePosX -= 100;
  }
  if (key == 'd') {
    circlePosX += 100;
  }
}
