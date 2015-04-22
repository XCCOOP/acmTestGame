Player p1;
Player p2;

Enemy e1;
Enemy e2;
Enemy e3;


Timer timer;

int playWidth = 500;
int playHeight = 500;

void setup() {
  size(playWidth, playHeight);
  p1 = new Player(1*(width/3), 1*height/2);
  p2 = new Player(2*(width/3), 1*height/2);
  
  e1 = new Enemy(2*(width/4), 1*height/4);
  e2 = new Enemy(2*(width/4), 2*height/4);
  e3 = new Enemy(2*(width/4), 3*height/4);
  
  timer = new Timer(500);
  timer.start();
}

void draw() {
  background(0);
  fill(0);
  //stroke(255,255,255);
  //rect(0,0,playWidth-1,playHeight-1);
  //noStroke();
  fill(255,0,0);
  p1.draw();
  fill(0,0,255);
  p2.draw();
  fill(0,255,0);
  if(timer.isFinished()) {
    e1.changeDirection();
    e2.changeDirection();
    e3.changeDirection();
    timer.start();
  }
  e1.draw();
  e2.draw();
  e3.draw();
}

void keyPressed() {
  switch (key) {
  case Buttons.PLAYER_1_JOYSTICK_UP:
    p1.move(Direction.UP);
    break;
  case Buttons.PLAYER_1_JOYSTICK_DOWN:
    p1.move(Direction.DOWN);
    break;
  case Buttons.PLAYER_1_JOYSTICK_LEFT:
    p1.move(Direction.LEFT);
    break;
  case Buttons.PLAYER_1_JOYSTICK_RIGHT:
    p1.move(Direction.RIGHT);
    break;
  case Buttons.PLAYER_2_JOYSTICK_UP:
    p2.move(Direction.UP);
    break;
  case Buttons.PLAYER_2_JOYSTICK_DOWN:
    p2.move(Direction.DOWN);
    break;
  case Buttons.PLAYER_2_JOYSTICK_LEFT:
    p2.move(Direction.LEFT);
    break;
  case Buttons.PLAYER_2_JOYSTICK_RIGHT:
    p2.move(Direction.RIGHT);
    break;  
  }
}

void keyReleased() {
  switch (key) {
  case Buttons.PLAYER_1_JOYSTICK_UP:
    p1.stop(Direction.UP);
    break;
  case Buttons.PLAYER_1_JOYSTICK_DOWN:
    p1.stop(Direction.DOWN);
    break;
  case Buttons.PLAYER_1_JOYSTICK_LEFT:
    p1.stop(Direction.LEFT);
    break;
  case Buttons.PLAYER_1_JOYSTICK_RIGHT:
    p1.stop(Direction.RIGHT);
    break;
  case Buttons.PLAYER_2_JOYSTICK_UP:
    p2.stop(Direction.UP);
    break;
  case Buttons.PLAYER_2_JOYSTICK_DOWN:
    p2.stop(Direction.DOWN);
    break;
  case Buttons.PLAYER_2_JOYSTICK_LEFT:
    p2.stop(Direction.LEFT);
    break;
  case Buttons.PLAYER_2_JOYSTICK_RIGHT:
    p2.stop(Direction.RIGHT);
    break;  
  }
}

