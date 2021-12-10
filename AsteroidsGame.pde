//your variable declarations here
Spaceship ship;
Star [] sue;
ArrayList <Asteroid> rocks;

public void setup() 
{
  size(500, 500);
  background(0);
  ship = new Spaceship();
  rocks = new ArrayList <Asteroid>();
  for (int i = 0; i < 101; i++){
      rocks.add(new Asteroid());
  }
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
  for (int i = 0; i < rocks.size();i++){
    rocks.get(i).move();
    rocks.get(i).show();
    float d = dist((float)ship.getX(), (float)ship.getY(), (float)rocks.get(i).getX(), (float)rocks.get(i).getY());
    if (d < 15){
      rocks.remove(i);
    }
  }
  for (int i = 0; i < sue.length; i++) {
    sue[i].show();
  }
  if (keyPressed) {
    if (key == 'a') {
      ship.turn(-8);
    }
    if (key == 'w'){
      ship.accelerate(0.1);
    }
    if (key == 'd'){
      ship.turn(8);
    }
    if (key == 's'){
      ship.accelerate(-0.1);
    }
    if (key == 'r'){
      ship.setXspeed(0);
      ship.setYspeed(0);
      ship.setCenterX((int)(Math.random()*400)+50);
      ship.setCenterY((int)(Math.random()*400)+50);
    }
  }
}
