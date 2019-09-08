shoot play;
PVector location;
PVector gravity;
PVector velocity;

void setup() {
  size(800,800);
  play = new shoot();
}

  void draw() {
    pushMatrix();
background(0,0,255);
if (mousePressed == true) {
 play.bullet();
 
}
  rect(100,650,100,100);
    popMatrix();

  }
