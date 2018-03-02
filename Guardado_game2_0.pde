class Player {
  int x, y;
  int hitpoint, score;

  Player(int sx, int sy) {
    x = sx;
    y = sy;
  }

  void moveRight() {
    x = x+5;
  }

  void moveLeft() {
    x = x-5;
  }

  void moveUp() {
    y = y+5;
  }

  void moveDown() {
    y =  y-5;
  }

  void display() {
    fill (0, 255, 255);
    ellipse (x, y, 30, 30);
  }
}

Player p;

void setup() {
  size(600, 600);
  background(255,102,255);
  p = new Player (42, 42);
}

void draw() {
  p.display();
  if (keyPressed) {
    if (keyCode == UP) {
      p.moveUp();
    } else if (keyCode == DOWN) {
      p.moveDown();
    } else if (keyCode == LEFT) {
      p.moveLeft();
    } else if  (keyCode == RIGHT) {

      p.moveRight();
      saveFrame("Guardado_game2_0.png");
    }
  }
}