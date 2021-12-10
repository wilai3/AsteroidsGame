class Bullet extends Floater {
  public Bullet(Spaceship ship) {
    myColor = color(255, 255, 255);
    myCenterX = ship.getX();
    myCenterY = ship.getY();
    myXspeed = ship.getXspeed();
    myYspeed = ship.getYspeed();
    myPointDirection = ship.getDirection();
    accelerate(6.0);
  }
  public void show() {
    fill(myColor);
    stroke(myColor);
    ellipse((float)myCenterX, (float)myCenterY, 5, 5);
  }
}
