Spaceship bob= new Spaceship();
Star[] nightSky= new Star [500];
public void setup() 
{
  background(0);
  size(500,500);
   for (int i=0;i<nightSky.length;i++){
   nightSky[i]=new Star();
  }
  bob.turn(20);
  bob.accelerate(1);
}
public void draw() 
{
  background(0);
  bob.move();
  bob.show();
  for (int i=0;i<nightSky.length;i++){
   nightSky[i].show();
  }
}
//if caps lock is on spaceship won't move
public void keyPressed(){
  if(key=='w'){
    bob.accelerate(1);
}
   if(key=='a'){
     bob.turn(10);
   }
   if(key=='d'){
     bob.turn(-10);
   }
   if(key=='s'){
    bob.accelerate(-1);
}
//hyperspace also allows us to make a sudden stop if the ship moves to fast
  if(key=='r'){
  bob.setXspeed(0.0);
  bob.setYspeed(0.0);
  bob.turn((int)(Math.random()*10));
  bob.hyperspace();
}
}
