PVector location;
PVector gravity;
PVector speed;

void setup() {
  size(800,800);
  background(0,0,255);
}
/*
class bulletBill {
PVector location = new PVector(150,650);
}
*/

  void draw() {
  if (mousePressed == true) {
    PVector location = new PVector(150,650);
    rect(location.x,location.y,50,50);

}
}
