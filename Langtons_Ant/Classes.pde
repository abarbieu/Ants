class ant {
  int xg, yg, sp;
  int size;
  color c;
  ant(int xn, int yn, int sizen) {
    xg=xn;
    yg=yn;
    size=sizen;
  }
  void paint(color cn) {
    c=cn;
  }
  void display() {
    fill(c);
    stroke(0);
    noStroke();
    rect(xg, yg, size, size);
  }
  color c() {
    return(c);
  }
  void speed(int spn) {
    sp=spn;
  }

  void turnLeft() {
    if (pos != 0) {
      pos--;
    } else {
      pos=3;
    }
  }
  void turnRight() {
    if (pos != 3) {
      pos++;
    } else {
      pos=0;
    }
  }
  void check() {
    if (x>=rows-1) {
      x=1;
    }
    if (x<1) {
      x=rows-2;
    }
    if (y>=columns-1) {
      y=1;
    }
    if (y<1) {
      y=columns-2;
    }

    if (pos == 0) {
      y--;
    } else if (pos == 1) {
      x++;
    } else if (pos == 2) {
      y++;
    } else if (pos == 3) {
      x--;
    }
  }
  void colors() {
    if (ant[x][y].c() == color(255)) {  
      ant[x][y].paint(color(255, 0, 0));
      ant[x][y].turnLeft();
      ant[x][y].display();
    } else if (ant[x][y].c() == color(255, 0, 0)) {
      ant[x][y].paint(color(0, 255, 0));
      ant[x][y].turnRight();
      ant[x][y].display();
    } else if (ant[x][y].c() == color(0, 255, 0)) {
      ant[x][y].paint(color(0));
      ant[x][y].turnRight();
      ant[x][y].display();
    } else if (ant[x][y].c() == color(0)) {
      ant[x][y].paint(color(255, 255, 0));
      ant[x][y].turnRight();
      ant[x][y].display();
    } else if (ant[x][y].c() == color(255, 255, 0)) {
      ant[x][y].paint(color(255, 0, 255));
      ant[x][y].turnRight();
      ant[x][y].display();
    } else if (ant[x][y].c() == color(255, 0, 255)) {
      ant[x][y].paint(color(150));
      ant[x][y].turnLeft();
      ant[x][y].display();
    } else if (ant[x][y].c() == color(150)) {
      ant[x][y].paint(color(130, 27, 27));
      ant[x][y].turnLeft();
      ant[x][y].display();
    } else if (ant[x][y].c() == color(130, 27, 27)) {
      ant[x][y].paint(color(20, 70, 20));
      ant[x][y].turnLeft();
      ant[x][y].display();
    } else if (ant[x][y].c() == color(20, 70, 20)) {
      ant[x][y].paint(color(15, 15, 110));
      ant[x][y].turnRight();
      ant[x][y].display();
    } else if (ant[x][y].c() == color(15, 15, 110)) {
      ant[x][y].paint(color(90, 90, 15));
      ant[x][y].turnRight();
      ant[x][y].display();
    } else if (ant[x][y].c() == color(90, 90, 15)) {
      ant[x][y].paint(color(255));
      ant[x][y].turnRight();
      ant[x][y].display();
    }
  }
  void update() {
    for (int n=0; n<=sp; n++) {
      ant[x][y].colors();
      ant[x][y].check();
    }
  }
}