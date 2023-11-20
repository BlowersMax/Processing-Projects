void setup() {
  size(800, 400);
  textSize(30);
}

String input = "";
String found = "?";
int foundInt = 0;
String start = "The quick brown fox\njumped over the lazy dog\n";
String line =  start + "on a cloudy day";
int index = -1;


void keyPressed() {

  if (key == '\n') {
    checkString(input);
    input = "";
  } else {
    input += key;
  }
}

void checkString(String input) {
  foundInt = start.indexOf(input);
  foundInt = line.indexOf(input);
}

void draw() {
  background(100);
  fill(100, 255, 100);
  text("search: " + input, 30, 100);
  // text("found: " + found, 500,100);
  text("found: " + foundInt, 500, 100);
  fill(200, 100, 255);
  text(line, 30, 200);
}
