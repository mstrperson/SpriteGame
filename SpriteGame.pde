
SpaceShip player;

void setup()
{
  size(1280, 900);
  player = new SpaceShip(width / 2, height / 2);
}

void draw()
{
  background(0, 0, 0);
  
  player.keyboardControl();
  
  if(player.collidesWith(color(255, 255, 255))
  {
    // BOOM!
  }
  
  player.drawSprite();
}
