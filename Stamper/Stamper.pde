//
// Author: Max Blowers
// url: https://maxblowers.dev/
// desc:
//  A program that draws shapes while clicking
//

// Init project

void setup() {
  size(800, 800);
  background(#525252);
}

// Declare vars, ints, strings
String shape = "f";
int clr = #CB2B2B;

// The drawy part of the project
void draw() {
  // Determine key pressed and which and set accordingly
  if (keyPressed == true) {
    // Shapes
    if (key == 'f') {
      shape = "f";
    } else if (key == 't') {
      shape = "t";
    } else if (key == 'a') {
      shape = "a";
    } else if (key == 'c') {
      background(#525252);
    }
    // set the colors
    else if (key == 'r') {
      clr = #CB2B2B;
    } else if (key == 'g') {
      clr = #03AD1E;
    } else if (key == 'b') {
      clr = #1F9AEA;
    } else if (key == 'p') {
      clr = #AF1CD8;
    } else {
      return;
    }
  }

  // draw the stuffs
  if (mousePressed == true) {
    if (shape == "f") {
      fill(clr);
      strokeWeight(2);
      ellipse(mouseX + 20, mouseY - 5, 15, 15);
      ellipse(mouseX - 20, mouseY - 5, 15, 15);
      triangle(mouseX+15, mouseY+20, mouseX, mouseY, mouseX-15, mouseY+20);
      rect(mouseX - 19, mouseY + 25, 40, 10);
    } else if (shape == "t") {
      fill(clr);
      strokeWeight(5);
      stroke(#000000);
      ellipse(mouseX, mouseY, 55, 55);
      ellipse(mouseX, mouseY, 35, 35);
      ellipse(mouseX, mouseY, 15, 15);
    } else if (shape == "a") {
      fill(clr);
      strokeWeight(2);
      stroke(#ffffff);
      triangle(mouseX-20, mouseY+5, mouseX, mouseY-15, mouseX, mouseY+25);
      rect(mouseX, mouseY+1, 15, 8);
      triangle(mouseX+35, mouseY+5, mouseX+15, mouseY-15, mouseX+15, mouseY+25);
    } else {
      return;
    }
  }
}
