class Obstacle extends Sprite
{
  float diameter;
  color color1, color2;
  
  // Constuctor method
  Obstacle(float x, float y, float dx, float dy, float d, color c1, color c2)
  {
    super(x, y, dx, dy);
    
    this.diameter = d;
    this.color1 = c1;
    this.color2 = c2;
  }
  
  void drawSprite()
  {
    fill(color1);
    ellipse(x, y, diameter, diameter);
    fill(color2);
    ellipse(x, y, diameter/2, diameter/2);
  }
}
