PVector location;
PVector gravity;
PVector velocity;

void setup() {
  size(800,800);
  location = new PVector(150,650);
  velocity = new PVector(5,-5);
  gravity = new PVector(0,0.1);
}

class bulletBill {
PVector location = new PVector(150,650);
}


  void draw() {
pushMatrix();
background(0,0,255);
    location.add(velocity);
    velocity.add(gravity);
    if ((location.x > width) || (location.x < 0)) {
      velocity.x = velocity.x * -1;
      }
      
    if ((location.y > height) || (location.y < 0)) {
        velocity.y = 0;
        velocity.x = 0;
  }
    rect(location.x,location.y,50,50);
    popMatrix();
}
