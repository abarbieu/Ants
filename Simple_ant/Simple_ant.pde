int s=10;
int rows, columns;
ant[][] ant;
int x, y;
int pos =1;
void setup() {
    background(0);
  size(800, 800);
  rows = width/s;
  columns = height/s;
  x=rows/2;
  y=columns/2;
  ant = new ant[rows][columns];
  for (int i=0; i<rows; i++) {
   for (int j=0; j<columns; j++) {
     ant[i][j] = new ant(i*s, j*s, s);
     ant[i][j].paint(color(255));
     //ant[i][j].display();
   }
  }
}
void draw() {
  ant[x][y].speed(1);
  ant[x][y].update();
}