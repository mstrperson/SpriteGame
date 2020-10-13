
// this is your player, they're a blob and they're kinda boring.
Blob player;
Block obstacle;



void setup()
{
  size(500, 500);
  
  // Blob parameters are: 
  // x (px), y (px), radius (px), 
  // x-speed (px/frame), y-speed (px/frame), and color.
  player = new Blob(100, 100, 20, color(255, 0, 180));
  obstacle = new Block(400, 200, 30, 20, color(128, 0, 200));
  obstacle.setVelocity(2, 0);
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
