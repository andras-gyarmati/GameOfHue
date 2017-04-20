class Cell {

  float x, y;
  float w;
  float age;
  int state;
  int previous;

  Cell(float x_, float y_, float w_) {
    x = x_;
    y = y_;
    w = w_;
    age = 0;
    state = 0;
    previous = state;
  }

  void savePrevious() {
    previous = state;
  }

  void newState(int s) {
    state = s;
    age++;
  }

  void display() {
    stroke(0);
    if (age > 255) {
      age = 0;
    }
    if (state == 1) {
      fill(age, 255, 255);
    } else {
      fill(age, 255, 40);
    }
    rect(x, y, w, w);
  }
}