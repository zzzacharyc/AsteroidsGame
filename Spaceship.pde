
class Spaceship extends Floater{
  public Spaceship(){
    corners = 3;
    xCorners = new int[] {16, -8, -8};
    yCorners = new int[] {0, 8, -8};
    myColor = color(255);
    myCenterX = width/2;
    myCenterY = height/2;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }
  public void hyperspace(){
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myPointDirection = (int)(Math.random()*360);
    myXspeed = 0;
    myYspeed = 0;
  }
public double getX() { return myCenterX; }
public double getY() { return myCenterY; }
public float getXSpeed() { return (float)myXspeed; }
public float getYSpeed() { return (float)myYspeed; }
public float getPointDirection() { return (float)myPointDirection; }
}

