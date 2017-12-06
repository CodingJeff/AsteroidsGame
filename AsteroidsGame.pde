//your variable declarations here
Spaceship Jeff = new Spaceship();
Stars [] aBunch;
ArrayList <Asteroid> rocks= new ArrayList<Asteroid>();
public void setup() 
{
  size(1000,1000);
  background(0);
  aBunch=new Stars[400];

  for (int i = 0; i < aBunch.length; i++)
  {
    aBunch[i]= new Stars();
  }

  for (int i =0; i < 50; i++)
  {
    rocks.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  
  for (int i = 0; i < aBunch.length; i++)
  {
    aBunch[i].show();
  }
  for (int i = 0; i < rocks.size(); i++)
  {
    rocks.get(i).show();
    rocks.get(i).move();
    if (dist(Jeff.getX(),Jeff.getY(),rocks.get(i).getX(),rocks.get(i).getY() )< 25)
    {
      rocks.remove(i);
    }
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
    Jeff.setX((int)(Math.random()*800)+100);
    Jeff.setY((int)(Math.random()*800)+100);
    Jeff.setDirectionX(0);
    Jeff.setDirectionY(0);
    Jeff.setPointDirection((int)(Math.random()*360));
  }
}