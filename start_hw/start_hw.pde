//
// Author: Max Blowers
// Description:
//    I'm a car that looks like its moving but I really doesn't.
//

// Setup and define canvas size
void setup() {
  size(500, 400);
}

// Offsets to make look like moving
int offset = 0;

// Someone's gotta draw the stuff right? right...?
void draw() {
  strokeWeight(0);
  // Sky
  background(#4DC5FF);

  // Ground
  fill(#1FC606);
  rect(0, 250, 500, 150);

  // Road
  fill(#363636);
  rect(0, 300, 500, 75);

  // Cars 2 was the worst cars movie
  // Body
  beginShape();
  fill(#777D83);
  vertex(250, 300);
  vertex(250, 350);
  vertex(425, 350);
  vertex(425, 300);
  vertex(350, 300);
  vertex(350, 275);
  vertex(300, 275);
  vertex(250, 300);
  endShape();
  // Window
  fill(#1F65AA);
  rect(290, 285, 50, 25);
  // Wheels n Tires

  // Moving stuff
  for (int i = 0; i < 1; i += 1) {
    // Trees hurt
    fill(#81525D);
    rect((i*50) + offset, 175, 25, 75);
    fill(#53B76B);
    ellipse((i*75) + offset + 9, 165, 60, 80);
  }
  offset += 1;
}
