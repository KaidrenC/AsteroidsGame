class Spaceship extends Floater
{
    public Spaceship(){
    corners=5;  
    xCorners= new int [corners];
    yCorners= new int [corners];
    xCorners[0]=-8;
    yCorners[0]=-8;
    xCorners[1]=16;
    yCorners[1]=0;
    xCorners[2]=-8;
    yCorners[2]=8;
    myColor=200;
    myCenterX=200;
    myCenterY=200;
    myXspeed=0; 
    myYspeed=0;
    myPointDirection=0; 
 
}
  public void setXspeed (double x){
    myXspeed=x;
  }
    public void setYspeed (double y){
    myYspeed=y;
  }
  public void hyperspace(){
    myCenterX=(int)(Math.random()*500);
    myCenterY=(int)(Math.random()*500);
  }
}
