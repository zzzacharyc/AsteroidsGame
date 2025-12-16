class Bullet extends Floater {

  public Bullet(Spaceship theShip) {
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myPointDirection = theShip.getPointDirection();
    myXspeed = theShip.getXSpeed();
    myYspeed = theShip.getYSpeed();
    accelerate(6.0);
    corners = 20;
    xCorners = new int[corners];
    yCorners = new int[corners];
    int r = 3;
    for (int i = 0; i < corners; i++) {
      float angle = TWO_PI / corners * i;
      xCorners[i] = (int)(cos(angle) * r);
      yCorners[i] = (int)(sin(angle) * r);
    }
    myColor = color(255, 0, 0);
   

  }

  public void show() {
    fill(myColor);
    stroke(myColor);
    ellipse((float)myCenterX, (float)myCenterY, 6, 6);
  }
  
  public void move() {
    myCenterX += myXspeed;
    myCenterY += myYspeed;
}

}
