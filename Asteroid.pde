class Asteroid extends Floater{
	private int rotateSpeed;
	public Asteroid(){
		corners = 8;
		int[] x = {12,8,0,-8,-12,-8,0,8};
		int[] y = {0,-8,-12,-8,0,8,12,8};
		xCorners=x;
		yCorners=y;

myColor=color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
myCenterX=(int)Math.random()*1000;
myCenterY=(int)Math.random()*1000;
myDirectionX=Math.random()*5-2;
myDirectionY=Math.random()*5-2;
myPointDirection=0;
rotateSpeed= (int)(Math.random()*8)+1;
	}
	public void move() {
		turn(rotateSpeed);
		super.move();
	}
	public void setX(int x) {myCenterX=x;}
	public int getX() {return (int)myCenterX;}
	public void setY(int y) {myCenterY=y;}
	public int getY() {return (int)myCenterY;}
public void setDirectionX(double x) { myDirectionX = x; }
public double getDirectionX() {return myDirectionX;}
public void setDirectionY(double y) {myDirectionY = y;}
public double getDirectionY() {return myDirectionY;}
public void setPointDirection(int degrees) { myPointDirection = degrees;}
public double getPointDirection() {return myPointDirection;}
public void setrotateSpeed(int speed) {rotateSpeed = speed;}
public double getrotateSpeed() {return rotateSpeed;}
}