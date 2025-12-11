Spaceship bob;
Star stars;
ArrayList <Asteroid> a;
boolean Forward = false;
boolean Left = false;
boolean Right = false;
public void setup() {
  size(500, 500);
  bob = new Spaceship();
  stars = new Star();
  a = new ArrayList <Asteroid>();
  for (int i = 0; i < 12; i++){
    a.add(new Asteroid());
  }
  textSize(24);
}
public void draw() {
  background(0);
  for (int i = a.size()-1; i >= 0; i--){
    Asteroid z = a.get(i);
    
     float d = dist((float)z.myCenterX, (float)z.myCenterY,
                 (float)bob.getX(), (float)bob.getY());
    if (d < 20){
      a.remove(i);
    }
    else{
      z.show();
      z.move();
    }
  }
  stars.show();
  bob.show();
  bob.move();
  if (Forward){
     bob.accelerate(0.1);
  }
  if (Left){
    bob.turn(-7);
  }
  if (Right){
    bob.turn(7);
  }
}
public void keyPressed() {
  if (key == 'w') Forward = true;
  if (key == 'a') Left = true;
  if (key == 'd') Right = true;
  if (key == ' ') bob.hyperspace();
}
public void keyReleased() {
  if (key == 'w') Forward = false;
  if (key == 'a') Left = false;
  if (key == 'd') Right = false;
}
