/**
 * Author: Benjamin Dicken
 * Description:
 *   This is a spaceship target-practice game. The goal is to shoot the red/white target.
 *   Use 'a' and 'd' to move the spaceship left/right.
 *   Press the spacebar or click the mouse to shoot a bullet (you can only shoot 1 at a time).
 *   Press the 'r' key to continue playing the game once you win.
 */

int width = 600;     // canvas width
int height = 400;    // canvas height
int enemyX = width/2;
int enemyY = 40;
int playerX = width/2;
int playerY = height-40;
int bulletX = -50;
int bulletY = -50;
PImage space;       // background space image
PImage player;      // player spaceship image

void setup() {
  size(600, 400);
  textSize(40);
  player = loadImage("spaceship.png");
  space = loadImage("space.jpg");
  frameRate(90);
}

void draw() {
  playGame();
}

/**
 * Draw the player (using an image)
 */
void drawPlayer() {
  image(player, playerX-40, playerY-40, 80, 80);
}

/**
 * Draw the enemy target, and update it's position.
 */
void drawEnemy() {
  strokeWeight(5);
  stroke(255, 0, 0);
  fill(255);
  rect(enemyX-60, enemyY-30, 60, 60);
  rect(enemyX-50, enemyY-20, 40, 40);
  rect(enemyX-40, enemyY-10, 20, 20);
  if (frameCount % 60 == 0) {
    int r = int(random(100, 500));
    int z = int(random(50, 250));
    enemyX = r;
    enemyY = z;
  }
}

/**
 * Update and display the bullet.
 */
void updateBullet() {
  strokeWeight(0);
  fill(0, 255, 0);
  rect(bulletX-5, bulletY, 10, 30);
  bulletY-=7;
}

/**
 * Either continue playing the game, or display the "you win" text.
 */
void playGame() {
  if (bulletY > 10 && bulletY < 40 && bulletX > enemyX-60 && bulletX < enemyX) {
    fill(255);
    text("You win!", 100, 100);
    text("Press 'r' to continue", 100, 200);
  } else {
    image(space, 0, 0, width, height);
    drawEnemy();
    updateBullet();
    drawPlayer();
  }
}

/**
 * Handle the various key presses.
 */
void keyPressed() {
  if (key == 'a' && playerX > 5) {
    playerX -= 30;
  } else if (key == 'd' && playerX < width-5) {
    playerX += 30;
  } else if (key == 'r') {
    bulletX = -50;
    bulletY = -50;
  } else if (key == ' ' && bulletY < 0) {
    bulletX = playerX;
    bulletY = playerY;
  }
}

/**
 * When the mouse is pressed, the spaceship can also shoot.
 */
void mousePressed() {
  if (bulletY < 0) {
    bulletX = playerX;
    bulletY = playerY;
  }
}
