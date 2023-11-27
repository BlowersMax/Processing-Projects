void setup() {
  size(600, 600);
  background(100);
  textSize(25);
}

String inputUrl = "";
Boolean parseUrl = false;

int protocol = 10;
char testStr;

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
  text("Protocol: " + protocol, 40, 60);
  text("Test: " + testStr, 40, 80);
}

// Parses the URL and returns the URL seperated if it's a valid URL. If not, tells user to input a proper URL.
void parsley() {
  if (parseUrl == true) {
    println("Parsley!");

    for (int i = 0; i < inputUrl.length(); i+= 1) {
      println(i);

      for (int n = 7; n < inputUrl.length(); n +=1) {
        println(inputUrl.charAt(n));
        testStr = inputUrl.charAt(n);
      }
    }

    int protocolIndex = inputUrl.indexOf("http://");
    protocol = protocolIndex;
    println(protocolIndex);
    parseUrl = false;
    background(100);
    inputUrl = "";
  } else {
    return;
  }
}
