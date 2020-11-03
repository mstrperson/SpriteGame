
SpaceShip player;

ArrayList<Asteroid> asteroids= new ArrayList<Asteroid>();

void setup()
{
  fullScreen();
  player = new SpaceShip(width / 2, height / 2);
  
  for(int i = 0; i < 20; i++)
    asteroids.add(new Asteroid(random(width), random(height), 25 + random(75)));
}

void draw()
{
  background(0, 0, 0);
  
  for(Asteroid asteroid : asteroids)
  {
    asteroid.move();
    asteroid.drawSprite();
  }
  //player.setVelocity(10, 0);
  //player.followMouse();
  player.keyboardControl();
  
  if(player.collidesWith(color(255, 255, 255)))
  {
    // BOOM!
  }
  
  player.drawSprite();
}
