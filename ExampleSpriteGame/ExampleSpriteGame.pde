// this is your player, they're a blob and they're kinda boring.
Blob player;
//Block obstacle;
Tree tree1 = new Tree(350, 400);

// Collection of Obstacles!  I can make as many as I want!
ArrayList<Obstacle> allTheObstacles = new ArrayList<Obstacle>();

void setup()
{
  fullScreen();
  
  // Obstacle needs:  x,   y, dx,dy, diameter, color1 and        color2
  allTheObstacles.add(
    new Obstacle(400, 500, 2, 5, 50, color(255, 0, 0), color(0, 0, 255)));
  allTheObstacles.add(
    new Obstacle(200, 100, 4, -1, 75, color(255, 0, 0), color(0, 0, 255)));
  allTheObstacles.add(
    new Obstacle(800, 300, -3, -1, 60, color(255, 0, 0), color(0, 0, 255)));
  
  
  for(int i = 0; i < 10; i++)
  {
    allTheObstacles.add(
      new Obstacle(random(width), random(height), 
                   random(-5, 5), random(-5, 5), 50, 
                   color(255, 0, 0), color(0, 0, 255)));
  }
  
  // Blob parameters are:
  // x (px), y (px), radius (px),
  // x-speed (px/frame), y-speed (px/frame), and color.
  player = new Blob(100, 100, 20, color(255, 0, 180));
  //obstacle = new Block(400, 200, 30, 20, color(128, 0, 200));
  //obstacle.setVelocity(2, 0);
}

void draw()
{
  background(255,255,255);  // Background FIRST
  
  // a place to hold things to delete.
  ArrayList<Obstacle> toDelete = new ArrayList<Obstacle>();
  
  for(Obstacle ob : allTheObstacles)  // Then Draw The Obstacles
  {
    ob.drawSprite();
    ob.move();
    
    // Check if I get close to an Obstacle
    if(ob.distanceTo(player) < ob.diameter)
    {
      /// I Hit this thing!!
      toDelete.add(ob);
    }
  }
  // actally delete the obstacles
  for(Obstacle deleteMe : toDelete)
  {
    allTheObstacles.remove(deleteMe);
  }
  

  // make the player move automatically.
  if(keyPressed) // only move the character IF there is a key pressed.
  {
    player.keyboardControl();
  }
  
  if(player.collidesWith(color(255,0,0)))
  {
    player.moveTo(100,100);
  }
 
  //else if( WINNN!!!! )
 
  // draw the Sprites on the screen.
  player.drawSprite();
}
