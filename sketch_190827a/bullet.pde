class bullet {
  PVector location;
  PVector velocity;
  PVector gravity;
  float angle = 0;

  bullet() {
    location = new PVector(10000, 10000);
    velocity = new PVector(0, 0);
    gravity = new PVector(0, 0);
}

  void display() {
    pushMatrix();
    fill(255, 255, 255);
    translate(location.x, location.y);
    rotate(angle);
    rectMode(CENTER);
    rect(0, 0, 50, 50);
    popMatrix();
    location.add(velocity); 
    velocity.add(gravity);
    angle += 0.1;
  }
}
