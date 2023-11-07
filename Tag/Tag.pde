void setup() {
  size(640, 640);
}

void draw() {
  background(#86C9FF);
  drawPlayingField();
  drawPlayers();
}

int player1PosX = 30;
int player1PosY = 30;

int player2PosX = 0;
int player2PosY = 0;

void drawPlayingField() {
  for (int i = 0; i <= 100; i += 1) {
    stroke(#9B4D46);
    strokeWeight(2);
    line(i * 64, 0, i * 64, 640);
    line(0, i * 64, 640, i * 64);
  }
}

void drawPlayers() {
  // Player 1
  fill(#F9FA49);
  ellipse(player1PosX, player1PosY, 62, 62);
  // Player 2
}

// move players
void keyReleased() {
  // Player 1 movement
  if (key == 'w') {
    if (player1PosY < 31) {
      return;
    } else {
      player1PosY -= 64;
    }
  } else if (key == 's') {
    if (player1PosY > 600) {
      return;
    } else {
      player1PosY += 64;
    }
  } else if (key == 'a') {
    if (player1PosX < 31) {
      return;
    } else {
      player1PosX -= 64;
    }
  } else if (key == 'd') {
    if (player1PosX > 600) {
      return;
    } else {
      player1PosX += 64;
    }
  }
  // Player 2 movement
}
