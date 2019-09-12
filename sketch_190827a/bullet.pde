class bullet {
  PVector location;
  PVector velocity;
  PVector gravity;

  bullet() {
    location = new PVector(10000, 10000);
    velocity = new PVector(0, 0);
    gravity = new PVector(0, 0);
}

  void display() {
    pushMatrix();
    fill(255, 255, 255);
    rect(location.x, location.y, 50, 50);
    popMatrix();
    location.add(velocity); 
    velocity.add(gravity);
  }
}
