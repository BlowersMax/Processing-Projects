void setup() {
  size(640, 640);
}

void draw() {
  background(#86C9FF);
  drawPlayingField();
  drawPlayers();
  drawScoreBar();
  isTagged();
}

int player1PosX = 32;
int player1PosY = 30;

int player2PosX = 608;
int player2PosY = 570;

boolean isTouch = false;
int contactCounter = 0;

void drawPlayingField() {
  for (int i = 0; i <= 9; i += 1) {
    stroke(#9B4D46);
    strokeWeight(2);
    line(i * 64, 0, i * 64, 640);
    line(0, i * 60, 640, i * 60);
  }
}

void drawPlayers() {
  // Player 1
  fill(#F9FA49);
  ellipse(player1PosX, player1PosY, 55, 55);
  // Player 2
  ellipse(player2PosX, player2PosY, 55, 55);
}

// Create the scorebar
void drawScoreBar() {
  fill(#555050);
  rect(0, 600, 640, 40);
  fill(#ffffff);
  text(contactCounter, 320, 620);
}

// Check if players have tagged
void isTagged() {
  if (player1PosX == player2PosX && player1PosY == player2PosY) {
    isTouch = true;
  } else {
    isTouch = false;
  }
  
  if (isTouch == true) {
    contactCounter += 1;
  } else {
    return;
  }
}

// move players
void keyReleased() {
  // Player 1 movement
  if (key == 'w') {
    if (player1PosY < 40) {
      return;
    } else {
      player1PosY -= 60;
    }
  } else if (key == 's') {
    if (player1PosY > 550) {
      return;
    } else {
      player1PosY += 60;
    }
  } else if (key == 'a') {
    if (player1PosX < 40) {
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
  } else if (key == 'i') {
    if (player2PosY < 40) {
      return;
    } else {
      player2PosY -= 60;
    }
  } else if (key == 'k') {
    if (player2PosY > 550) {
      return;
    } else {
      player2PosY += 60;
    }
  } else if (key == 'j') {
    if (player2PosX < 40) {
      return;
    } else {
      player2PosX -= 64;
    }
  } else if (key == 'l') {
    if (player2PosX > 580) {
      return;
    } else {
      player2PosX += 64;
    }
  }
}
