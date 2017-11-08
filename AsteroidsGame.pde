//your variable declarations here
Spaceship Jeff = new Spaceship();
Stars [] aBunch;
Asteroid [] rocks;
public void setup() 
{
  size(1000,1000);
  background(0);
  aBunch=new Stars[400];

  for (int i = 0; i < aBunch.length; i++)
  {
    aBunch[i]= new Stars();
  }
  rocks= new Asteroid[200];
  for (int i =0; i < rocks.length; i++)
  {
    rocks[i]= new Asteroid();
  }
}
public void draw() 
{
  background(0);
  
  for (int i = 0; i < aBunch.length; i++)
  {
    aBunch[i].show();
  }
  for (int i = 0; i < rocks.length; i++)
  {
    rocks[i].show();
    rocks[i].move();
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