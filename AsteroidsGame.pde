Spaceship bob = new Spaceship();
ArrayList <Asteroid> meteore = new ArrayList <Asteroid>();
ArrayList <Bullet> laser = new ArrayList <Bullet>();
Star[] nightsky = new Star[1000];
public void setup() {
  background(0,0,255);
  size(2000,2000);
  for(int i = 0; i<nightsky.length;i++) {
   nightsky[i] = new Star();
  }
  for(int i = 0; i<10;i++) {
   Asteroid rock = new Asteroid();
   meteore.add(rock);
  }
}

public void draw() {
 background(0,0,255);
 bob.show();
 bob.move();
 for(int i = 0; i<nightsky.length;i++) {
  nightsky[i].show(); 
 }
 for(int i = 0; i<meteore.size();i++) {
  meteore.get(i).move();
  meteore.get(i).show();
  float d = dist((float)bob.getX(),(float) bob.getY(),(float)meteore.get(i).getX(), (float)meteore.get(i).getY());
  if (d<25) {
    meteore.remove(i);
 }
}
for (int i = 0; i <laser.size();i++){
 laser.get(i).move();
 laser.get(i).show();
}
for (int i = 0; i < laser.size(); i++) {
 for (int j= 0; j <meteore.size();j++) {
     float f = dist((float)bob.getX(),(float) bob.getY(),(float)meteore.get(i).getX(), (float)meteore.get(i).getY());
 if (f<50) {
   meteore.remove(j);
   laser.remove(i);
   break;
 }
 }
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
  bob.setXspeed(0);
  bob.setYspeed(0);
  bob.setCenterX((Math.random()*2000));
    bob.setCenterY((Math.random()*2000));
}
 if (key=='e'){
  Bullet shoot = new Bullet(bob); 
  laser.add(shoot);
 }
}
