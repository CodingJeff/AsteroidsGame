
class Stars //note that this class does NOT extend Floater
{
  private int myX, myY;
  Stars()
  {
    myX=(int)(Math.random()*1000)+1;
    myY=(int)(Math.random()*1000)+1;
  }
public void show()
  {
    fill(50);
    noStroke();   
    ellipse(myX, myY, 8, 8);
  }
}