//
// Author: Max Blowers
// Description:
//    Car go vroom vroom race
//

void setup() {
  size(800, 500);
}

int offset = 300;

void draw() {
  // Road & roadlike components
  for (int i = 1; i <=500; i+=1) {
    fill(#3E3D3D);
    rect((i*15)-offset, 0, 8, 500);
    fill(#000000);
    rect((i*50)-offset+150, 0, 100, 500);
  }

  // the yellow lines
  for (int i = 1; i<=500; i+=1) {
    fill(#CEBC19);
    rect((i*55)-offset, 245, 45, 15);
  }

  // Finish Line
  fill(#EA495F);
  rect(1300-offset, 0, 40, 500);
  // the cars that go vroom

  // I have arbitrarily decided that this car gets to lose
  for (int i = 1; i<=1; i+=1) {
    fill(#54FF21);
    rect(offset - 350, (mouseY/2.5), 70, 50);
    // Window
    fill(#000000);
    rect(offset-330, (mouseY+20)/2.5, 20, 30);
  }

  // Car that wins
  for (int i = 1; i<=1; i+=1) {
    fill(#2E4BFF);
    rect((offset*2)-800, (mouseY+500)/2, 70, 50);
    // Window
    fill(#000000);
    rect((offset*2)-780, (mouseY+520)/2, 20, 30);
  }

  offset += 1;
  if (offset == 1350) {
    exit();
  }
}
