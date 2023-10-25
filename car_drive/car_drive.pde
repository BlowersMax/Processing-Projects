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

  // Sun
  fill(#D6B913);
  ellipse(20, 15, 100, 90);

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
  fill(#635C83);
  ellipse(280, 350, 30, 30);
  ellipse(400, 350, 30, 30);
  fill(#9AABBC);
  ellipse(280, 350, 20, 20);
  ellipse(400, 350, 20, 20);

  // Moving stuff
  for (int i = 0; i < 1; i += 1) {
    // Trees hurt
    fill(#81525D);
    rect((i*50) + offset, 175, 25, 75);
    fill(#53B76B);
    ellipse((i*75) + offset + 9, 165, 60, 80);

    // Birds
    strokeWeight(4);
    // 1
    line((i*50) + offset+25, 50, (i*50) + offset+25, 65);
    line((i*50) + offset +25, 65, (i*50) + offset+40, 50);

    //2
    line((i*50) + offset +100, 100, (i*50) + offset+115, 125);
    line((i*50) + offset +115, 125, (i*50) + offset+125, 100);
    // 3
    line((i*50) + offset +10, 150, (i*50) + offset+15, 165);
    line((i*50) + offset +15, 165, (i*50) + offset+20, 150);

    // 4
    line((i*50) + offset +70, 100, (i*50) + offset+80, 125);
    line((i*50) + offset +80, 125, (i*50) + offset+90, 100);

    // 5
    line((i*50) + offset +25, 100, (i*50) + offset+45, 125);
    line((i*50) + offset +45, 125, (i*50) + offset+55, 100);

    offset += 1;
  }
}
