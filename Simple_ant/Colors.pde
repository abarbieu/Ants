color c1=color(255), c2=color(255, 20, 0), c3=color(0, 215, 0), c4=color(0, 230, 255), 
  c5=color(255, 255, 0), c6=color(255, 20, 255), c7=color(85), c8=color(130, 27, 27), 
  c9=color(20, 70, 20), c10=color(14, 29, 255), c11=color(90, 90, 15), 
  c12=color(90, 15, 70);
void colors1(int a, int b, int c, int d, int e, int f, int g, 
  int h, int i, int j, int k, int l) {
  if (ant[x][y].c() == c1) {  

    ant[x][y].paint(color(c2));
    if (a==0) {
      ant[x][y].turnLeft();
    } else if (a==1) {
      ant[x][y].turnRight();
    }        
    ant[x][y].display();
  } else if (ant[x][y].c() == color(c2)) {

    if (c != 2) {
      ant[x][y].paint(color(c3));
    } else {
      ant[x][y].paint(c1);
    }
    if (b==0) {
      ant[x][y].turnLeft();
    } else if (b==1) {
      ant[x][y].turnRight();
    }
    ant[x][y].display();
  } else if (ant[x][y].c() == color(c3)) {

    if (d != 2) {
      ant[x][y].paint(color(c4));
    } else {
      ant[x][y].paint(c1);
    }
    if (c==0) {
      ant[x][y].turnLeft();
    } else if (c==1) {
      ant[x][y].turnRight();
    }
    ant[x][y].display();
  } else if (ant[x][y].c() == color(c4)) { 


    if (e != 2) {
      ant[x][y].paint(color(c5));
    } else {
      ant[x][y].paint(c1);
    }
    if (d==0) {
      ant[x][y].turnLeft();
    } else if (d==1) {
      ant[x][y].turnRight();
    }
    ant[x][y].display();
  } else if (ant[x][y].c() == color(c5)) {

    if (f != 2) {
      ant[x][y].paint(color(c6));
    } else {
      ant[x][y].paint(c1);
    }
    if (e==0) {
      ant[x][y].turnLeft();
    } else if (e==1) {
      ant[x][y].turnRight();
    }
    ant[x][y].display();
  } else if (ant[x][y].c() == color(c6)) {

    if (g != 2) {
      ant[x][y].paint(color(c7));
    } else {
      ant[x][y].paint(c1);
    }
    if (f==0) {
      ant[x][y].turnLeft();
    } else if (f==1) {
      ant[x][y].turnRight();
    }
    ant[x][y].display();
  } else if (ant[x][y].c() == color(c7)) {

    if (h != 2) {
      ant[x][y].paint(color(c8));
    } else {
      ant[x][y].paint(c1);
    }
    if (g==0) {
      ant[x][y].turnLeft();
    } else if (g==1) {
      ant[x][y].turnRight();
    }
    ant[x][y].display();
  } else if (ant[x][y].c() == color(c8)) {

    if (i != 2) {
      ant[x][y].paint(color(c9));
    } else {
      ant[x][y].paint(c1);
    }
    if (h==0) {
      ant[x][y].turnLeft();
    } else if (h==1) {
      ant[x][y].turnRight();
    }
    ant[x][y].display();
  } else if (ant[x][y].c() == color(c9)) {

    if (j != 2) {
      ant[x][y].paint(color(c10));
    } else {
      ant[x][y].paint(c1);
    }
    if (i==0) {
      ant[x][y].turnLeft();
    } else if (i==1) {
      ant[x][y].turnRight();
    }
    ant[x][y].display();
  } else if (ant[x][y].c() == color(c10)) {

    if (k != 2) {
      ant[x][y].paint(color(c11));
    } else {
      ant[x][y].paint(c1);
    }
    if (j==0) {
      ant[x][y].turnLeft();
    } else if (j==1) {
      ant[x][y].turnRight();
    }
    ant[x][y].display();
  } else if (ant[x][y].c() == color(c11)) {

    if (l != 2) {
      ant[x][y].paint(color(c12));
    } else {
      ant[x][y].paint(c1);
    }
    if (k==0) {
      ant[x][y].turnLeft();
    } else if (k==1) {
      ant[x][y].turnRight();
    }
    ant[x][y].display();
  } else if (ant[x][y].c() == color(c12)) {

    if (l != 2) {
      ant[x][y].paint(c1);
    } else {
      ant[x][y].paint(color(90, 15, 70));
    }
    if (l==0) {
      ant[x][y].turnLeft();
    } else if (l==1) {
      ant[x][y].turnRight();
    }
    ant[x][y].display();
  }
}