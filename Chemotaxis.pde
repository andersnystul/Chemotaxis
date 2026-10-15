class Walker {
 int myX, myY, myColor;
 
 Walker() {
  myX = 250;
  myY = 250;
  myColor = color(143,236,240);
 }
 void walk() {
  if (mouseX > myX)
    myX = myX + (int)(Math.random()*5 -1);
  if (mouseX < myX)
    myX = myX + (int)(Math.random()*6 -4);
  if (mouseY > myY)
    myY = myY + (int)(Math.random()*5 -1); 
  else
    myY = myY + (int)((Math.random()*6)-4);
 }
 void show() {
   fill(myColor);
  ellipse(myX,myY,15,15); 
 }
}
Walker [] home;
void setup() {
 size(500,500); 
 home = new Walker[100];
 for (int i = 0; i < home.length; i++)
   home[i] = new Walker();
}

void draw () {
background(0);
 for (int j = 0; j < home.length; j++) {
   home[j].walk();
   home[j].show();
   // if (dist(home[j].myX,home[j].myY,home[j+1].myX,home[j+1].myY) < 50) {
     //home[j].myColor = color(0,255,0); }
 }
}

void mousePressed () {
home = new Walker[100];
for (int i = 0; i < home.length; i++) {
  home[i] = new Walker(); }
for (int j = 0; j < home.length; j++) {
  home[j].walk();
  home[j].show(); }
}
