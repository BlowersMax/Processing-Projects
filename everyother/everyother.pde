void setup () {
 size(300, 300);
 textSize(50); 
}

//Write the function drawEveryOther() here


void draw () {
  background(100);
  String a = "ABCDEFG";
  drawEveryOther(a, 20, 75);
  String b = "one-two-three";
  drawEveryOther(b, 20, 150);
  String c = "severalWordsTogether";
  drawEveryOther(c, 20, 225);
}

void drawEveryOther (String str, int x, int y) {
  String newText = "";
  for (int i = 0; i < str.length(); i += 2) {
    newText += str.charAt(i);
  }
  println(str);
  println(newText);
  text(newText, x, y);
}
