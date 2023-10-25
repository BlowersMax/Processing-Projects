//
// Author: Max Blowers
// Description:
//    I follow your mouse where ever it goes! Kind of creepy.
//

void setup() {
  size(800, 800);
  background(#F07A30);
}

void draw() {
  background(#F07A30);

  //TODO - Invert to get proper overlapping

  // Torso & Legs
  strokeWeight(1);
  fill(#6AFF9F);
  beginShape();
  vertex(mouseX - 45, mouseY + 70);
  vertex(mouseX - 45, mouseY + 300);
  vertex(mouseX - 20, mouseY + 300);
  vertex(mouseX - 20, mouseY + 215);
  vertex(mouseX + 20, mouseY + 215);
  vertex(mouseX + 20, mouseY + 300);
  vertex(mouseX + 45, mouseY + 300);
  vertex(mouseX + 45, mouseY + 70);
  vertex(mouseX - 45, mouseY + 70);
  endShape();

  // Buttons
  fill(#7E5E5D);
  ellipse(mouseX - 0, mouseY + 90, 10, 10);
  ellipse(mouseX - 0, mouseY + 105, 10, 10);
  ellipse(mouseX - 0, mouseY + 120, 10, 10);

  // Shoes
  fill(#FF6262);
  rect(mouseX - 70, mouseY +295, 50, 15);
  rect(mouseX + 20, mouseY +295, 50, 15);

  fill(#5E94D8);
  // Arms
  rect(mouseX - 86, mouseY + 45, 175, 25);
  // Hands
  fill(#FFE1B4);
  ellipse(mouseX-86, mouseY+56, 30, 30);
  ellipse(mouseX+86, mouseY+56, 30, 30);

  // Hair
  strokeWeight(10);
  line(mouseX, mouseY-50, mouseX, mouseY-100);
  line(mouseX-25, mouseY-43, mouseX-25, mouseY-100);
  line(mouseX+20, mouseY-45, mouseX+20, mouseY-100);

  strokeWeight(1);

  fill(#FFE1B4);
  // Face
  ellipse(mouseX, mouseY, 100, 100);
  // Eyes
  fill(#8AD7FC);
  ellipse(mouseX - 20, mouseY - 10, 15, 15);
  ellipse(mouseX + 20, mouseY - 10, 15, 15);
  // Mouth
  strokeWeight(5);
  fill(#A70000);
  triangle(mouseX - 20, mouseY + 15, mouseX + 20, mouseY + 15, mouseX, mouseY + 30 );
}
