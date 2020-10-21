
SpaceShip player;

java.util.ArrayList<Asteroid> asteroids;

void setup()
{
  fullScreen();
  player = new SpaceShip(width / 2, height / 2);
  asteroids = new java.util.ArrayList<Asteroid>();
  for(int i = 0; i < 10; i++)
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
  
  player.keyboardControl();
  
  if(player.collidesWith(color(255, 255, 255)))
  {
    // BOOM!
  }
  
  player.drawSprite();
}
