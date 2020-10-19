class Asteroid extends Sprite
{
  float wid;
  float len;
  
  Asteroid(float x, float y, float w, float l)
  {
    super(x, y, random(5), random(5));
    wid = w;
    len = l;
  }
  
  void drawSprite()
  {
    fill(255, 255, 255);
    ellipse(x, y, wid, len);
  }
}
