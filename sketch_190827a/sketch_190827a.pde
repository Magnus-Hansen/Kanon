bullet play;
PVector location;
PVector gravity;
PVector velocity;

void setup() {
  size(800, 800);
  play = new bullet();
}

void draw() {
  background(0, 0, 255);
  pushMatrix();
  // husk at lave rotate funktion 
  popMatrix();
  play.bounce();
  rect(100, 650, 100, 100);
}  

void mouseClicked() {
  for(int i = 1; i < 10; i++){
  play.display();
  }
}
