public class Enemy {
  public static final int SPEED = 1;
  public static final int SIZE = 10;

  private int x;
  private int y;

  private boolean moveRight;
  private boolean moveUp;
  private boolean moveLeft;
  private boolean moveDown;

  public Enemy(int x, int y) {
    this.x = x;
    this.y = y;

    moveRight = false;
    moveLeft = false;
    moveUp = false;
    moveDown = false;
  }

  public void draw() {
    if (moveRight && (x < playWidth-SIZE)) {
      x += SPEED;
    }
    if (moveLeft && (x > 0)) {
      x -= SPEED;
    }
    if (moveUp && (y > 0)) {
      y -= SPEED;
    }
    if (moveDown && (y < playHeight-SIZE)) {
      y += SPEED;
    }

    rect(x, y, SIZE, SIZE);
  }

  public void changeDirection() {
    float direction = random(0,4);
    
    
    
    switch ((int)direction) {
    case 0:
      moveRight = false;
      moveLeft = false;
      moveDown = false;
      moveUp = true;
      break;
    case 1:
      moveRight = false;
      moveLeft = false;
      moveUp = false;
      moveDown = true;
      break;
    case 2:
      moveRight = false;
      moveUp = false;
      moveDown = false;
      moveLeft = true;
      break;
    case 3:
      moveLeft = false;
      moveUp = false;
      moveDown = false;
      moveRight = true;
      break;
    }
  }

  public void move(Direction d) {
    switch (d) {
    case UP:
      moveUp = true;
      break;
    case DOWN:
      moveDown = true;
      break;
    case LEFT:
      moveLeft = true;
      break;
    case RIGHT:
      moveRight = true;
      break;
    }
  }

  public void stop(Direction d) {
    switch (d) {
    case UP:
      moveUp = false;
      break;
    case DOWN:
      moveDown = false;
      break;
    case LEFT:
      moveLeft = false;
      break;
    case RIGHT:
      moveRight = false;
      break;
    }
  }
}
