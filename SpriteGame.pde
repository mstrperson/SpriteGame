
// this is your player, they're a blob and they're kinda boring.
Blob player;
Blob obstacle;

void setup()
{
  size(500, 500);
  
  // Blob parameters are: 
  // x (px), y (px), radius (px), 
  // x-speed (px/frame), y-speed (px/frame), and color.
  player = new Blob(100, 100, 50, 1.25, 1.5, color(255, 0, 180));
  obstacle = new Blob(400, 200, 10, 1.25, 1.5, color(128, 0, 200));
}

void draw()
{
  background(255,255,255);
  
  // make the player move automatically.
  player.keyboardControl();
  
  obstacle.chase(player);
  
  if(player.collidesWith(obstacle))
  {
    player.moveTo(random(width), random(height));
  }
  
  // draw the Sprites on the screen.
  obstacle.drawSprite();
  player.drawSprite();
}
