String quote = "Seize the day";

int length = quote.length();
println(length);

String n3 = quote.substring(2, 3);
println(n3);

for (int i = 0; i < quote.length(); i += 1) {
  char current = quote.charAt(i);
  println(current);
}
