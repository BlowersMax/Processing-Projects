/*
 * Author: Max Blowers
 * URL: https://maxblowers.dev/
 * Description:
 *    A simple fun tag game that works.
 */

void setup() {
  size(640, 640);
  textSize(40);
}

int player1PosX = 32;
int player1PosY = 30;

int player2PosX = 608;
int player2PosY = 570;

int contactCounter = 0;
boolean isCurrentlyTagged = false;

void draw() {
  drawPlayingField();
  drawPlayers();
  drawScoreBar();
  isTagged(player1PosX, player1PosY, player2PosX, player2PosY);
  displayWin();
}

void drawPlayingField() {
  background(#86C9FF);

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
  text(contactCounter, 320, 632);
}

// Check if players have tagged
void isTagged(int p1X, int p1Y, int p2X, int p2Y) {
  if (p1X == p2X && p1Y == p2Y && !isCurrentlyTagged) {
    text("Tag, you're it!", 225, 300);
    contactCounter += 1;
    isCurrentlyTagged = true;
  } else if (p1X != p2X || p1Y != p2Y) {
    isCurrentlyTagged = false;
  }
}

void displayWin() {
  if (isCurrentlyTagged) {
    text("Tag, you're it!", 225, 300);
  } else {
    return;
  }
}


// move players
void keyReleased() {
  // Checking tag here too just to be sure
  isTagged(player1PosX, player1PosY, player2PosX, player2PosY);
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
  } else {
    println(key);
  }
}
