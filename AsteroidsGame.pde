//your variable declarations here
Spaceship Jeff = new Spaceship();
Stars [] aBunch;
public void setup() 
{
  size(1000,1000);
  background(0);
  aBunch=new Stars[1000];
  for (int i = 0; i < aBunch.length; i++)
  {
    aBunch[i]= new Stars();
  }
}
public void draw() 
{
  background(0);
  
  for (int i = 0; i < aBunch.length; i++)
  {
    aBunch[i].show();
  }
  Jeff.show();
  Jeff.move();
}
public void keyTyped()
{
  if(key == 'w')
  {
    Jeff.accelerate(0.7);
  }
  if(key == 'a')
    {
      Jeff.turn(10);
    }
    if(key == 'd')
    {
      Jeff.turn(-10);
    }
}
public void keyPressed()
{
  if (key== 'h')
  {
    Jeff.setX((int)(Math.random()*1000));
    Jeff.setY((int)(Math.random()*1000));
    Jeff.setDirectionX(0);
    Jeff.setDirectionY(0);
    Jeff.setPointDirection((int)(Math.random()*360));
  }
}