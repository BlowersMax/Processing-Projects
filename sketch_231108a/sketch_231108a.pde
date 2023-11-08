void setup() {
  size(400, 300);
  textSize(40);
}

void draw() {
  background(100);
  String name = "James Carlson";
  splitAndShowName(name);
  // p1();

  String a = "ABCDEFG";
  drawLastThree(a, 20, 150);
  
  String b = "one-two-three";
  drawLastThree(b, 20, 200);
  
  String c = "one-two-three-four-five";
  drawLastThree(c, 20, 250);
  
  String alpha = "abcdefghijklmnopqrstuvwxyz";
  everyOther(alpha);
}

void p1() {
  String line = "Hello, world!";
  String word = "holiday";

  int i;
  int j;
  int index;

  i = line.indexOf("world");
  j = word.indexOf("holiday");

  index = word.indexOf("sun");

  println(i, j, index);
}

void splitAndShowName(String name) {
  // int str = name.indexOf(" ");
  String n1 = name.substring(0, 5);
  String n2 = name.substring(5);
  text(n1, 20, 50);
  text(n2, 10, 100);
}

void drawLastThree(String str, int x, int y) {
  int count = str.length();
  String modifiedStr = str.substring(count - 3);
  text(modifiedStr, x, y);
}

void everyOther(String str) {
  int count = str.length();
  for (int i = 0; i < count; i += 2) {
    char letter = str.charAt(i);
    println(letter);
    text(letter, i*15, 275);
  }
}
