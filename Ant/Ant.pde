int s=3, rows, columns, x, y, pos=1, l=0, r=1, stop=2, speed;
ant[][] ant;
boolean pause=true, reset=false, mode=true ;
PImage img;
color c1=color(255), c2=color(255, 20, 0), c3=color(0, 215, 0), c4=color(0, 230, 255), 
  c5=color(255, 255, 0), c6=color(255, 20, 255), c7=color(85), c8=color(130, 27, 27), 
  c9=color(20, 70, 20), c10=color(14, 29, 255), c11=color(90, 90, 15), 
  c12=color(90, 15, 70);

int wid = 1920;
int hi = 1080;
void setup() {
  //size(640,1000);
  fullScreen();
  if (mode) {
    s=1;
  }
  background(0);
  img = loadImage("img.png");
  rows = width/s;
  columns = height/s;
  x=rows/2;
  y=columns/2;
  ant = new ant[rows][columns];
  initialGrid();
}
void draw() {
  pushMatrix();
  scal();
  speed=int(s1);
  ant[x][y].speed(int(sq(speed)));
  input();
  popMatrix();
  fill(0);
  noStroke();
  rect((width/2)-100, height-100, 200, 100);
  instructions();
  drawButtons();
  sliders();
  if (mousePressed&&!locked1) {
    x=mouseX/s;
    y=mouseY/s;
  }
}