Spaceship ship;
Star [] sue;

public void setup() 
{
  size(500, 500);
  background(0);
  ship = new Spaceship();
  sue = new Star[150];
  for (int i = 0; i < sue.length; i++) {
    sue[i] = new Star();
  }
}

public void draw() 
{
  background(0);
  ship.move();
  ship.show();
  for (int i = 0; i < sue.length; i++) {
    sue[i].show();
  }
  if (keyPressed) {
    if (key == 'a') {
      ship.turn(-8);
    }
    if (key == 'w'){
      ship.accelerate(0.2);
    }
    if (key == 'd'){
      ship.turn(8);
    }
    if (key == 'r'){
      ship.setXspeed(0);
      ship.setYspeed(0);
      ship.setCenterX((int)(Math.random()*500));
      ship.setCenterY((int)(Math.random()*500));
      ship.setPointDirection(Math.random()*360);
    }
  }
}
