class Bullet extends Floater{
	public Bullet(Spaceship theShip){
		corners=4;
		int[] x = {1,-1,-1,1};
		int[] y = {1,1,-1,-1};
		xCorners = x;
		yCorners = y;

		myColor=color((int)(Math.random()+255),(int)(Math.random()*255),(int)(Math.random()*255));
			myCenterX=250;
			myCenterY=250;
			myDirectionX=0;
			myDirectionY=0;
			myPointDirection=0;
	}
public void setX(int x) {myCenterX = x; }
public int getX() {return (int)myCenterX;}
public void setY(int y) {myCenterY = y;}
public int getY() {return (int)myCenterY;}
public void setDirectionX(double x) { myDirectionX = x; }
public double getDirectionX() {return myDirectionX;}
public void setDirectionY(double y) {myDirectionY = y;}
public double getDirectionY() {return myDirectionY;}
public void setPointDirection(int degrees) { myPointDirection = degrees;}
public double getPointDirection() {return myPointDirection;}

}