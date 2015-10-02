Snowflake[] bob;
void setup()
{
  size(300,300);
  background(0);
  bob = new Snowflake[100];
  for(int i=0;i<100;i++)
  {
    bob[i] = new Snowflake();
  }
}  
void draw()
{
  for (int i=0;i<100;i++)
  {
    bob[i].erase();
    bob[i].lookDown();
    bob[i].move();
    bob[i].wrap();
    bob[i].show();
  }
}
void mouseDragged()
{
  fill(150,0,0);
 rect(mouseX,mouseY,10,10);
}

class Snowflake
{
  int x,y;
  boolean isMoving;
  Snowflake()
  {
    x = (int)(Math.random()*300);
    y = (int)(Math.random()*300);
    isMoving = true;
  }
  void show()
  {
    fill(255);
    ellipse(x,y,5,5);
  }
  void lookDown()
  {
    if(y>=0&&y<=290&&get(x,y+6)!=color(0,0,0))
    {
      isMoving = false;
    }
    else
    {
      isMoving = true;
    }
  }
  void erase()
  {
    fill(0);
    ellipse(x,y,7,7);
  }
  void move()
  {
    if(isMoving)
    {
      y++;
    }
  }
  void wrap()
  {
    if(y>=300)
    {
      y=0;
      x=(int)(Math.random()*300);
    }
  }
}


