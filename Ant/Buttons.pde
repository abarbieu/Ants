int xsize=hi/24;
int ysize=hi/24;
int d1=l,d2=l,d3=r,d4=l,d5=l,d6=l,d7=r,d8=r,d9=r,d10=r,d11=r,d12=stop;


int abx=wid-xsize, aby=ysize, abxsize=xsize, abysize=ysize;
color abc = c1;
int aba=d1;

int bbx=wid-xsize, bby=(ysize*2)+ysize, bbxsize=xsize, bbysize=ysize;
color bbc = c2;
int bba=d2;

int cbx=wid-xsize, cby=((ysize*2)*2)+ysize, cbxsize=xsize, cbysize=ysize;
color cbc = c3;
int cba=d3;

int dbx=wid-xsize, dby=((ysize*2)*3)+ysize, dbxsize=xsize, dbysize=ysize;
color dbc = c4;
int dba=d4;

int ebx=wid-xsize, eby=((ysize*2)*4)+ysize, ebxsize=xsize, ebysize=ysize;
color ebc = c5;
int eba=d5;

int fbx=wid-xsize, fby=((ysize*2)*5)+ysize, fbxsize=xsize, fbysize=ysize;
color fbc = c6;
int fba=d6;

int gbx=wid-xsize, gby=((ysize*2)*6)+ysize, gbxsize=xsize, gbysize=ysize;
color gbc = c7;
int gba=d7;

int hbx=wid-xsize, hby=((ysize*2)*7)+ysize, hbxsize=xsize, hbysize=ysize;
color hbc = c8;
int hba=d8;

int ibx=wid-xsize, iby=((ysize*2)*8)+ysize, ibxsize=xsize, ibysize=ysize;
color ibc = c9;
int iba=d9;

int jbx=wid-xsize, jby=((ysize*2)*9)+ysize, jbxsize=xsize, jbysize=ysize;
color jbc = c10;
int jba=d10;

int kbx=wid-xsize, kby=((ysize*2)*10)+ysize, kbxsize=xsize, kbysize=ysize;
color kbc = c11;
int kba=d11;

int lbx=wid-xsize, lby=((ysize*2)*11)+ysize, lbxsize=xsize, lbysize=ysize;
color lbc = c12;
int lba=d12;

int pausebx=wid/2, pauseby=(hi-55), pausebxsize=100, pausebysize=10;
int resetbx=wid/2, resetby=(hi-35), resetbxsize=100, resetbysize=10;


void buttons() {
  stroke(0);
  strokeWeight(5);
  rectMode(RADIUS);
  //1
  fill(abc);
  rect(abx, aby, abxsize, abysize);
  if(aba>2){
    aba=0;
  }
  //2
  fill(bbc);
  rect(bbx, bby, bbxsize, bbysize);
    if(bba>2){
    bba=0;
  }
  //3
  fill(cbc);
  rect(cbx, cby, cbxsize, cbysize);
    if(cba>2){
    cba=0;
  }
  //4
  fill(dbc);
  rect(dbx, dby, dbxsize, dbysize);
    if(dba>2){
    dba=0;
  }
  //5
  fill(ebc);
  rect(ebx, eby, ebxsize, ebysize);
    if(eba>2){
    eba=0;
  }
  //6
  fill(fbc);
  rect(fbx, fby, fbxsize, fbysize);
    if(fba>2){
    fba=0;
  }
  //7
  fill(gbc);
  rect(gbx, gby, gbxsize, gbysize);
    if(gba>2){
    gba=0;
  }
  //8
  fill(hbc);
  rect(hbx, hby, hbxsize, hbysize);
    if(hba>2){
    hba=0;
  }
  //9
  fill(ibc);
  rect(ibx, iby, ibxsize, ibysize);
    if(iba>2){
    iba=0;
  }
  //10
  fill(jbc);
  rect(jbx, jby, jbxsize, jbysize);
    if(jba>2){
    jba=0;
  }
  //11
  fill(kbc);
  rect(kbx, kby, kbxsize, kbysize);
    if(kba>2){
    kba=0;
  }
  //12
  fill(lbc);
  rect(lbx, lby, lbxsize, lbysize);
    if(lba>2){
    lba=0;
  }
  
  //pause
  noStroke();
  noFill();
  rect(pausebx, pauseby, pausebxsize, pausebysize);
  rect(resetbx, resetby, resetbxsize, resetbysize);
  
  textAlign(CENTER);
  fill(0);
  dt(abx,aby,aba);
  dt(bbx,bby,bba);
  dt(cbx,cby,cba);
  dt(dbx,dby,dba);
  dt(ebx,eby,eba);
  dt(fbx,fby,fba);
  dt(gbx,gby,gba);
  dt(hbx,hby,hba);
  dt(ibx,iby,iba);
  dt(jbx,jby,jba);
  dt(kbx,kby,kba);
  dt(lbx,lby,lba);

  rectMode(CORNER);
}
void mousePressed() {
  if (mouseX>=abx-(abxsize) && mouseX<abx+(abxsize)
    && mouseY>=aby-(abysize) && mouseY<=aby+(abysize)) {
    aba++;
  }
  if (mouseX>=bbx-(bbxsize) && mouseX<bbx+(bbxsize)
    && mouseY>=bby-(bbysize) && mouseY<=bby+(bbysize)) {
    bba++;
  }
  if (mouseX>=cbx-(cbxsize) && mouseX<cbx+(cbxsize)
    && mouseY>=cby-(cbysize) && mouseY<=cby+(cbysize)) {
    cba++;
  }
  if (mouseX>=dbx-(dbxsize) && mouseX<dbx+(dbxsize)
    && mouseY>=dby-(dbysize) && mouseY<=dby+(dbysize)) {
    dba++;
  }
  if (mouseX>=ebx-(ebxsize) && mouseX<ebx+(ebxsize)
    && mouseY>=eby-(ebysize) && mouseY<=eby+(ebysize)) {
    eba++;
  }
  if (mouseX>=fbx-(fbxsize) && mouseX<fbx+(fbxsize)
    && mouseY>=fby-(fbysize) && mouseY<=fby+(fbysize)) {
    fba++;
  }
  if (mouseX>=gbx-(gbxsize) && mouseX<gbx+(gbxsize)
    && mouseY>=gby-(gbysize) && mouseY<=gby+(gbysize)) {
    gba++;
  }
  if (mouseX>=hbx-(hbxsize) && mouseX<hbx+(hbxsize)
    && mouseY>=hby-(hbysize) && mouseY<=hby+(hbysize)) {
    hba++;
  }
  if (mouseX>=ibx-(ibxsize) && mouseX<ibx+(ibxsize)
    && mouseY>=iby-(ibysize) && mouseY<=iby+(ibysize)) {
    iba++;
  }
  if (mouseX>=jbx-(jbxsize) && mouseX<jbx+(jbxsize)
    && mouseY>=jby-(jbysize) && mouseY<=jby+(jbysize)) {
    jba++;
  }
  if (mouseX>=kbx-(kbxsize) && mouseX<kbx+(kbxsize)
    && mouseY>=kby-(kbysize) && mouseY<=kby+(kbysize)) {
    kba++;
  }
  if (mouseX>=lbx-(lbxsize) && mouseX<lbx+(lbxsize)
    && mouseY>=lby-(lbysize) && mouseY<=lby+(lbysize)) {
    lba++;
  }
  
    if (mouseX>=pausebx-(pausebxsize) && mouseX<pausebx+(pausebxsize)
    && mouseY>=pauseby-(pausebysize) && mouseY<=pauseby+(pausebysize)) {
    pause=!pause;
  }
   if (mouseX>=resetbx-(resetbxsize) && mouseX<resetbx+(resetbxsize)
    && mouseY>=resetby-(resetbysize) && mouseY<=resetby+(resetbysize)) {
    reset=!reset;
  }
  
  
   if (hover1) {
    locked1 = true;
  } else {
    locked1 = false;
  }
  
}
void mouseReleased(){
  if (mouseX>=resetbx-(resetbxsize) && mouseX<resetbx+(resetbxsize)
    && mouseY>=resetby-(resetbysize) && mouseY<=resetby+(resetbysize)) {
    reset=!reset;
  }
}
void drawButtons() {
  buttons();
  noStroke();
}