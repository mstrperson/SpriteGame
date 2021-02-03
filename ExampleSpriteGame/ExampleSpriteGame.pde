// this is your player, they're a blob and they're kinda boring.
Blob player;

// Collection of Obstacles!  I can make as many as I want!
ArrayList<Obstacle> allTheObstacles = new ArrayList<Obstacle>();
// Lets make some coins!
ArrayList<Coin> allTheCoins = new ArrayList<Coin>();

// What "level" of the game am I at.
int level;

void setup()
{
  fullScreen();
  
  level = 1;
  
  // make 50 more Obstacles
  for(int i = 0; i < 5; i++)
  {
    allTheObstacles.add(
      new Obstacle(random(width), random(height), 
                   random(-5, 5), random(-5, 5), 50, 
                   color(255, 0, 0), color(0, 0, 255)));
  }
  
  // Make some coins
  for(int i = 0; i < 5; i++)
  {
    //make a coin appear in a random location
    allTheCoins.add(
      new Coin(random(width), random(height)));
  }
  
  // Blob parameters are:
  // x (px), y (px), radius (px),
  // x-speed (px/frame), y-speed (px/frame), and color.
  player = new Blob(100, 100, 20, color(255, 0, 180));
  
}

void reset()
{
  // make 50 more Obstacles
  for(int i = 0; i < 5; i++)
  {
    allTheObstacles.add(
      new Obstacle(random(width), random(height), 
                   random(-5, 5), random(-5, 5), 50, 
                   color(255, 0, 0), color(0, 0, 255)));
  }
}

void level1()
{
  // a place to hold things to delete.
  ArrayList<Coin> toDelete = new ArrayList<Coin>();
  
  for(Obstacle ob : allTheObstacles)  // Then Draw The Obstacles
  {
    ob.drawSprite();
    ob.move();
    
    // Check if I get close to an Obstacle
    if(ob.distanceTo(player) < ob.diameter/2 + 50)
    {
      /// I Hit this thing!!
      player.moveTo(100, 100);
    }
  }
  
  for(Coin ob : allTheCoins)  // Then Draw The Obstacles
  {
    ob.drawSprite();
    ob.move();
    
    // Check if I get close to an Obstacle
    if(ob.distanceTo(player) < 50)
    {
      /// I Hit this thing!!
      toDelete.add(ob);
    }
  }
  
  // actally delete the obstacles
  for(Coin deleteMe : toDelete)
  {
    allTheCoins.remove(deleteMe);
  }
  
  // make the player move automatically.
  if(keyPressed) // only move the character IF there is a key pressed.
  {
    player.keyboardControl();
  }
 
  // draw the Sprites on the screen.
  player.drawSprite();
  
  if(allTheCoins.size() <= 0) level = 0; // this means, you WIN!
}

void win()
{
  textSize(76);
  text("WINNNNN", 100, 100);
}

void draw()
{
  background(255,255,255);  // Background FIRST
  
  // if I am on level 1, do level 1!
  if(level == 1)  level1();
  else if(level == 0) win();
}
