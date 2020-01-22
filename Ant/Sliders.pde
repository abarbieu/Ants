boolean locked1 = false, hover1 = false;
float s1=50;
float y1;
void sliders() {
  crossB(y1,s1);
  y1=width-((2*xsize)+20);
  if (mouseY > s1-10 && mouseY < s1+10 &&
    mouseX > y1-10 && mouseX < y1+10) {
    hover1 = true;
    stroke(255);
    if (!locked1) {
    }
  } else {
    stroke(255, 0, 0);
    hover1 = false;
  }
  crossHair(y1, s1);
}
void crossHair(float x, float y) {
  pushMatrix();
  strokeWeight(5);
  translate(x, y);
  line(-10, 0, 10, 0);
  line(0, -10, 0, 10);
  popMatrix();
}
void crossB(float x, float  y) {
  pushMatrix();
  translate(x, y);
  rectMode(RADIUS);
  fill(0);
  noStroke();
  rect(0, 0, 20, height);
  rectMode(CORNER);
  popMatrix();
}
void mouseDragged() {
  if (locked1) {
    s1 = mouseY;
  }
}