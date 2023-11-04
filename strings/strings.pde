void setup() {
  size(700, 200);
  textSize(50);
}

void draw() {
  background(100);
  String words = "These #are some characters% in a string";

  int a = words.indexOf("#");
  int b = words.indexOf("%");
  String sub1 = words.substring(a + 1, b );
  
  text(sub1, 50, 100);

  // println(sub1);
}
