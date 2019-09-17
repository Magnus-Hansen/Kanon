int total = 100;
bullet [] barray = new bullet[total];
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
    barray[i].display();
  }
  fill(0, 0, 0);
  rect(100, 650, 100, 100);
  fill(#FF9F03);
  ellipse(70, 700, 30, 30);
  ellipse(130, 700, 30, 30);
}  

void mouseClicked() {
  barray[c].location = new PVector(150, 650);
  barray[c].velocity = new PVector(7, -5);
  barray[c].gravity = new PVector(0, 0.1);
  c++;
}
