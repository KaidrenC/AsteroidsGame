class Asteroid extends Floater
{
  public Asteroid() {
    corners = 6;
    xCorners = new int[]{-41,34,45,98,-34,-25};
    yCorners = new int[]{-50,-18,40,48,94,87};
    myColor = 0;
    myXspeed = (Math.random()*10-8);
    myYspeed = (Math.random()*10-8);
    myCenterX = (Math.random()*2000);
    myCenterY = (Math.random()*2000); 
    myPointDirection = 0;
  }
  public void move() {
    turn(-3);
    super.move();
  }
  public double getX() {
    return (float)myCenterX;
  }
  public double getY() {
    return (float)myCenterY;
  }
}
