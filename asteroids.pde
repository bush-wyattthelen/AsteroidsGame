import java.util.*;

ArrayList<Star> stars = new ArrayList<Star>();
ArrayList<Asteroid> asteroids = new ArrayList<Asteroid>();
Spaceship mainShip = new Spaceship(200, 400, 0, 0, 0);

static int numStars = 25;

public void setup() {
  
  for (int i = 0; i < numStars; i++) {
    stars.add(new Star(Math.random() * width, Math.random() * height));
  }
  
  size(800, 800);
}

public void draw() {
  if (Math.random() < 0.015) {
    asteroids.add(new Asteroid());
  }
  
  background(0);
  
  for (int i = 0; i < stars.size(); i++) {
    stars.get(i).show();
  }
  
  mainShip.show();
  mainShip.move();
}

public void keyPressed() {
  if (key == 'a') {
    mainShip.turn(-10);
  }
  else if (key == 'd') {
    mainShip.turn(10);
  }
  else if (key == ' ') {
    mainShip.accelerate(0.5);
  }
}

int randomInt (int lower, int upper) {
  return (int)(Math.random() * (upper - lower + 1)) + lower;
}
