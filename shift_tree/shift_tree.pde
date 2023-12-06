
void setup () {
  size(600, 300);
  textSize(30);
}

String input = "";
String shiftedString = "";
String alpha = "abcdefghijklmnopqrstuvwxyz";

int shift = 7;

void draw() {
  background(100);
  fill(100, 230, 255);
  text("ENCRYPTER", 225, 50);
  text("input: " + input, 60, 100);
  text("shifted: " + shiftedString, 60, 190);
}

void encryptString(char k) {
  println(k);
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
    input = "";
  } else if (keyCode == UP) {
    shiftedString = "";
  } else {
    input += key;
    encryptString(key);
  }
}
