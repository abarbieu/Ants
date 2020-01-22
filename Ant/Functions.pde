void instructions() {
  textAlign(CENTER);
  fill(255);
  textSize(20);
  strokeWeight(1);
  text("SPACE: pause", width/2, height-50);
  text("R: display reset", width/2, height-30);
  text("SPACE+R: full reset", width/2, height-10);
  text("steps/frame: "+int(sq(speed)), width/2, height-70);
}
void dt(int xn, int yn, int qwe) {
  textSize(ysize/2);
  if (qwe==0) {
    text("LEFT", xn, yn);
  } else if (qwe==1) {
    text("RIGHT", xn, yn);
  } else if (qwe==2) {
    text("STOP", xn, yn);
  }
}
void initialGrid() {
  for (float i=0; i<rows; i++) {
    for (float j=0; j<columns; j++) {
      ant[int(i)][int(j)] = new ant(i*s, j*s, s);
      ant[int(i)][int(j)].paint(c1);
      if (mode) {
        img.updatePixels();
      }
      //ant[i][j].display();
    }
  }
}
void keyPressed() {
  if ( key == 'q' ) {
    aba = int(random(0, 2));
    bba = int(random(0, 2));
    cba = int(random(0, 2));
    dba = int(random(0, 2));
    eba = int(random(0, 2));
    fba = int(random(0, 2));
    gba = int(random(0, 3));
    hba = int(random(0, 3));
    iba = int(random(0, 3));
    jba = int(random(0, 3));
    kba = int(random(0, 3));
    lba = int(random(0, 3));
    reset = true;
    pause = !pause;
  }
  if (key == ' ') {
    pause=!pause;
  }
  if (key == 'r' || key == 'R') {
    reset=true;
  }
}
void keyReleased() {
  if (key == 'q') {
      reset = false;
      pause=!pause;
  }
  if (key == 'r' || key == 'R') {
    reset=false;
  }
}
float scale=1, e=0;
void mouseWheel(MouseEvent event) {
  e=event.getCount();
  scale+=e*1;
  if (scale<=1) {
    scale=1;
  }
  println(scale);
}
void scal() {
  translate(mouseX, mouseY);
  scale(scale);
  translate(-mouseX, -mouseY);
}
void input() {  

  if (reset) {
    for (int j=0; j<img.pixels.length; j++) {
      if (mode) {
        img.pixels[j] = 0;
      }
    } 
    if (!mode) {
      background(0);
    }
  }
  if (!pause && reset) {
    for (int i=0; i<rows; i++) {
      for (int j=0; j<columns; j++) {
        ant[i][j] = new ant(i*s, j*s, s);
        ant[i][j].paint(c1);
        if (mode) {
          img.updatePixels();
        }
        //ant[i][j].display();
      }
    }
    x=(width/2)/s;
    y=(height/2)/s;
  }
  //if (mousePressed && !pause) {
  //  x=mouseX/s;
  //  y=mouseY/s;
  //}

  if (pause) {
    textSize(20);
    smooth();
    ant[x][y].update();
    ant[x][y].display();
    if (mode) {
      img.updatePixels();
      image(img, 0, 0);
    } else {
      ant[x][y].display();
    }
  }
}