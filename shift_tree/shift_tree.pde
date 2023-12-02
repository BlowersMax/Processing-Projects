
void setup () {
  size(600, 300);
  textSize(30);
}

String input = "";
String shiftedString = "";
String alpha = "abcdefghijklmnopqrstuvwxyz";

int shift = 3;

void draw() {
  background(100);
  fill(100, 230, 255);
  text("input: " + input, 60, 70);
  text("shifted: " + shiftedString, 60, 190);
}

void shiftString() {
  // Write a loop that runs through all of the letters in the string variable
  // input, gets the index of that letter in alpha, adds the
  // shift value to the index to get a new index. If you "fall off the end"
  // of alpha, "wrap round" by subtracting 25 from the new index.

  // Use the new index to get the "shifted" letter in alpha
  // concatenate the new letter to the global variable shiftString

  // It will help to define four new variables:
  //   - two variable of type int for the indexes
  //   - two variables of type char for the original character and "shifted" character
  for (int i = 0; i < input.length(); i += 1) {
    char preChar = input.charAt(i);
    int preShiftIndex = alpha.indexOf(preChar);

    if (preShiftIndex != -1) {
      int shiftIndex = (preShiftIndex + shift) %26;
      char shiftChar = alpha.charAt(shiftIndex);
      shiftedString += shiftChar;
    }
  }
}

void keyPressed() {
  if (key == '\n') {
    shiftString();
    input = "";
  } else if (keyCode == UP) {
    shiftedString = "";
  } else {
    input += key;
  }
}
