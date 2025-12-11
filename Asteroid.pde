class Asteroid extends Floater{
  private double rotate;
   public Asteroid(){
     corners = 6;
     xCorners = new int[corners];
     yCorners = new int[corners];
     xCorners[0] = -11;
     yCorners[0] = -8;
     xCorners[1] = 7;
     yCorners[1] = -8;
     xCorners[2] =13;
     yCorners[2] =0;
     xCorners[3] = 6;
     yCorners[3] = 10;
     xCorners[4] = -11;
     yCorners[4] = 8;
     xCorners[5] = -5;
     yCorners[5] = 0;
     myColor = color(100);
     myCenterX = (int)(Math.random()*500);
     myCenterY = (int)(Math.random()*500);
     myPointDirection = Math.random()*300;
     myXspeed = (Math.random()*4-2)*2;
     myYspeed = (Math.random()*4-2)*2;
     rotate = Math.random()*20-10;
   }
   
public void move(){
myPointDirection = myPointDirection + rotate;
super.move();
  }
}


