class bullet {
  PVector location;
  PVector velocity;
  PVector gravity;

  bullet() {
    location = new PVector(10000, 10000);
    velocity = new PVector(0, 0);
    gravity = new PVector(0, 0);
  }

  void bounce() {
    if ((location.x > width) || (location.x < 0)) {
      velocity.x = velocity.x * -1;
    }

    if ((location.y > height) || (location.y < 0)) {
      velocity.y = 0;
      velocity.x = 0;
    }
  }

  void display() {
    rect(location.x, location.y, 50, 50);
  }

  void update() {
    location.add(velocity); 
    velocity.add(gravity);
  }
}
