class Star 
{
  private int myX, myY;
  public Star(){
    myX=(int)(Math.random()*2000);
    myY=(int)(Math.random()*2000);
}
public void show(){
  fill((int)(Math.random()*360), (int)(Math.random()*360),(int)(Math.random()*360));
  ellipse(myX, myY, 10, 10);
}
}
