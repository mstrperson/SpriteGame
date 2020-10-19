class SpaceShip extends Sprite
{
  protected float turnRate = PI/60;
  protected float thrust = 1.1;
  
  protected float x2, y2, x3, y3;
  
  SpaceShip(float x, float y)
  {
    super(x, y, 0.5, 0);
  }
  
  boolean collidesWith(color c)
  {
    return (get((int)x, (int)y) == c || get((int)x2, (int)y2) == c || get((int)x3, (int)y3) == c);
  }
  
  void turn(float theta)
  {
    float tx = dx;
    float ty = dy;
    dx = cos(theta)*tx - sin(theta) * ty;
    dy = sin(theta)*tx + cos(theta) * ty;
  }
  
  float getDirection()
  {
    return atan(dy / dx);
  } 
  
  void accelerate(float ratio)
  {
    float dir = getDirection();
    
    dx = dx * ratio;
    dy = dy * ratio;
    
    if(dx == 0) dx = 0.1*cos(dir);
    if(dy == 0) dy = 0.1*sin(dir);
  }
  
  void keyboardControl()
  {
    if(keyPressed)
    {
      if(keyCode == LEFT)
      {
        turn(turnRate);
      }
      if(keyCode == RIGHT)
      {
        turn(-turnRate);
      }
      if(keyCode == UP)
      {
        accelerate(thrust);
      }
      if(keyCode == DOWN)
      {
        accelerate(1/thrust);
      }
    }
    
    move();
  }
  
  protected void updateTriangle()
  {
    float mag = sqrt(dx * dx + dy * dy);
    float dx2 = 50 * (cos(PI/12) * -dx - sin(PI/12) * -dy) / mag;
    float dy2 = 50 * (sin(PI/12) * -dx + cos(PI/12) * -dy) / mag;
    float dx3 = 50 * (cos(-PI/12) * -dx - sin(-PI/12) * -dy) / mag;
    float dy3 = 50 * (sin(-PI/12) * -dx + cos(-PI/12) * -dy) / mag;
    
    x2 = x + dx2;
    y2 = y + dy2;
    
    x3 = x + dx3;
    y3 = y + dy3;
  }
  
  void drawSprite()
  {
    updateTriangle();
    fill(255, 255, 255);
    triangle(x, y, x2, y2, x3, y3); 
  }
}
