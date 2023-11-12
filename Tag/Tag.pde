/*
 * Author: Max Blowers
 * URL: https://maxblowers.dev/
 * Description:
 *    A simple fun tag game that works.
 */

// Setup and draw the canvas
void setup() {
  size(640, 640);
  textSize(40);
}

// All of the "state" needed to make sure the game works
int player1PosX = 32;
int player1PosY = 30;

int player2PosX = 608;
int player2PosY = 570;

int contactCounter = 0;
boolean isCurrentlyTagged = false;

// Draw the field, platers, scoreboard, and check tag and win.
void draw() {
  // the Field
  drawPlayingField();

  // Draw Players
  drawPlayer1(player1PosX, player1PosY);
  drawPlayer2(player2PosX, player2PosY);

  // Bottom UI and win conditions
  drawScoreBar();
  isTagged(player1PosX, player1PosY, player2PosX, player2PosY);
  displayWin();
}


void drawPlayingField() {
  background(#86C9FF);
  // Lines to create the grid
  for (int i = 0; i <= 9; i += 1) {
    stroke(#9B4D46);
    strokeWeight(2);
    line(i * 64, 0, i * 64, 640);
    line(0, i * 60, 640, i * 60);
  }
}

// Draw player 1
void drawPlayer1(int x, int y) {
  fill(#F9FA49);
  ellipse(x, y, 55, 55);
  strokeWeight(5);
  line(x-10, y-10, x-10, y);
  line(x+10, y-10, x+10, y);
  strokeWeight(2);
}

void drawPlayer2(int x, int y) {
  fill(#F9FA49);
  ellipse(x, y, 55, 55);
  line(x-10, y-10, x-10, y);
  line(x+10, y-10, x+10, y);
  ellipse(x, y+10, 25, 10);
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
    contactCounter += 1;
    isCurrentlyTagged = true;
  } else if (p1X != p2X || p1Y != p2Y) {
    isCurrentlyTagged = false;
  }
}

// Display the win text if it is detected that a tag was made
void displayWin() {
  fill(#0A23F5);
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
  // Player 1 movement & checking bounds
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
    }   // Player 2 movement & checking bounds
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
