Asteroid [] many;
Spaceship Jeff = new Spaceship();
Stars [] aBunch;
ArrayList <Asteroid> rocks= new ArrayList<Asteroid>();
ArrayList <Bullet> shots= new ArrayList<Bullet>();
public void setup() 
{
  size(1000,1000);
  aBunch = new Stars[200];
  for(int i = 0; i < aBunch.length; i++)
  {
    aBunch[i] = new Stars();
  }
  for(int i = 0; i < 50; i++)
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
      if(dist(Jeff.getX(),Jeff.getY(),rocks.get(i).getX(),rocks.get(i).getY()) <= 30)
      {
        rocks.remove(i);
      }
    }
    for(int i = 0; i < shots.size(); i++)
    {
  shots.get(i).show();
  shots.get(i).move();
for(int j = 0; j < rocks.size(); j++)
{
  if(dist(shots.get(i).getX(),shots.get(i).getY(),rocks.get(j).getX(),rocks.get(j).getY())<15)
{
  rocks.remove(i);
  shots.remove(i);
  break;
}
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
  if (key== 'r')
  {
    shots.add(new Bullet(Jeff));
  }
}
