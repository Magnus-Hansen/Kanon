PImage img;
int total = 10;
bullet [] barray = new bullet[total];
PVector location;
PVector gravity;
PVector velocity;
int c = 0;


void setup() {
  for (int i = 0; i < barray.length; i++) {
    barray[i] = new bullet();
  }
  size(800, 800);
}

void draw() {
  background(0, 0, 255);
  for (int i = 0; i < barray.length; i++) {
    barray[i].update();
    barray[i].display();
  }
  
  rect(100, 650, 100, 100);
}  

void mouseClicked() {
  barray[c].location = new PVector(150, 650);
  barray[c].velocity = new PVector(5, -5);
  barray[c].gravity = new PVector(0, 0.1);
  c++;
}
