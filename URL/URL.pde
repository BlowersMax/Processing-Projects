void setup() {
  size(600, 600);
  background(100);
  textSize(25);
}

String inputUrl = "";
Boolean parseUrl = false;


void draw() {
  drawAllText();
  parsley();
}

void keyPressed() {
  if (key == BACKSPACE) {
    return;
  } else if (keyCode == SHIFT) {
    return;
  } else if (keyCode == ENTER) {
    parseUrl = true;
  } else {
    inputUrl += key;
    println(inputUrl);
  }
}

void drawAllText() {
  text("URL: " + inputUrl, 20, 30);
}

// Parses the URL and returns the URL seperated if it's a valid URL. If not, tells user to input a proper URL.
void parsley() {
  if (parseUrl == true) {
    println("Parsley!");
    int protocolIndex = inputUrl.indexOf("http://");
    println(protocolIndex);
    parseUrl = false;
    background(100);
  } else {
    return;
  }
}
