void setup() {
  size(600, 600);
  background(100);
  textSize(25);
}

String inputUrl = "";
Boolean parseUrl = false;

void draw() {
  text("Enter URL:", 20, 30);
  text(inputUrl, 140, 30);
}

void keyPressed() {
  if (key == BACKSPACE) {
    println(key);
  } else if (keyCode == SHIFT) {
    println(key);
  } else {
    inputUrl += key;
    println(inputUrl);
  }
}
