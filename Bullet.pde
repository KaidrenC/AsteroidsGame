class Bullet extends Floater{
  public Bullet(Spaceship wee){
    myCenterX= wee.getX();
    myCenterY= wee.getY();
    myXspeed= 0.05;
    myYspeed= 0.05;
    myPointDirection=wee.getDirection();
    accelerate(6.0);
    myColor= color((int)(Math.random()*360), (int)(Math.random()*360),(int)(Math.random()*360));;
  }
  public void show(){
    ellipse((float)myCenterX,(float)myCenterY,50,50);
    fill(myColor);
  }
  public double getX() {
    return myCenterX; 
  }
  public double getY() {
    return myCenterY;
  }
}
