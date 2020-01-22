class ant {
  float xg, yg, sp;
  int size;
  color c;
  ant(float xn, float yn, int sizen) {
    xg=xn;
    yg=yn;
    size=sizen;
  }
  void display() {
    // stroke(0);
    //noStroke();
    if (mode) {
      stroke(c);
      int loc=wid*y+x;
      img.pixels[loc] = c;
    } else {
      fill(c);
      noStroke();
      stroke(c);
      strokeWeight(1);
      textAlign(CENTER);
      textSize(s/2);
      translate(xg, yg);
      //rotate(radians(25));
      translate(-xg, -yg);
      text("☻", xg, yg);
      //rect(xg, yg, s, s);
    }
  }
  void colors() {
    colors1(aba, bba, cba, dba, eba, fba, gba, hba, iba, jba, kba, lba);
  }




  void paint(color cn) {
    c=cn;
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
  void update() {
    for (int n=0; n<=sp; n++) {
      ant[x][y].colors();
      ant[x][y].check();
    }
  }
} 