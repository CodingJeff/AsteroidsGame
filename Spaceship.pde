class Spaceship extends Floater{
  public Spaceship(){   
 corners = 4;
 int[] xS = {-8,16,-8, 0};
 int[] yS = {8, 0, -8, 0};
 xCorners = xS;
 yCorners = yS;
}
public void setX(int x) {myCenterX = x; }
public int getX() {return (int)myCenterX;}
public void setY(int y) {myCenterY = y;}
}