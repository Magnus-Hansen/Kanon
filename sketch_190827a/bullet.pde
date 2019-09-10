class bullet {

  bullet() {
    location = new PVector(150, 650);
    velocity = new PVector(5, -5);
    gravity = new PVector(0, 0.1);
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
    location.add(velocity);
    velocity.add(gravity);
  }
}
