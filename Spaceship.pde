class Spaceship extends Floater  
{   
  public Spaceship() {
    corners = 4;
    xCorners = new int[]{-8, 16, -8, -2};
    yCorners = new int[]{-8, 0, 8, 0};
    myColor = color(#C1BBBB);
    myCenterX = 250;
    myCenterY = 250;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }
  public void setXspeed(double x){
    myXspeed = x;
  }
  public void setYspeed(double x){
    myYspeed = x;
  }
  public void setCenterX(int x){
    myCenterX = x;
  }
  public void setCenterY(int x){
    myCenterY = x;
  }
  public void setPointDirection(double x){
    myPointDirection = x;
  }
}
