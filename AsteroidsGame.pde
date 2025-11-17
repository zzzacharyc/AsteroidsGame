Spaceship bob;
Star stars;
boolean Forward = false;
boolean Left = false;
boolean Right = false;
public void setup() {
  size(500, 500);
  bob = new Spaceship();
  stars = new Star();
  textSize(24);
}
public void draw() {
  background(0);
  stars.show();
  bob.show();
  bob.move();
  if (Forward) bob.accelerate(0.3);
  if (Left) bob.turn(-7);
  if (Right) bob.turn(7);
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
