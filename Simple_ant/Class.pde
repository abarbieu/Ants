int l=0, r=1, stop=2;
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
   // noStroke();
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
    colors1(r,r,l,l,stop,r,r,r,r,r,r,r);
  }
  void update() {
    for (int n=0; n<=sp; n++) {
      ant[x][y].colors();
      ant[x][y].check();
    }
  }
}