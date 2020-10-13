/* In order to actually use the Sprite class, we must /extend/ it.
 * We can add to this class /more/ information than is in Sprite
 * but, we do NOT need to replicate the data that is stored in Sprite.
 * x, y, dx, and dy are all defined in the Sprite class and we get
 * all of those for free by using "extends Sprite"
 */
class Blob extends Sprite
{
  // Blobs have a Radius and a color
  int radius;
  color myColor;
  
  // Create a blob with default velocity.
  Blob(int x, int y, int r, color c)
  {
    // super calls the Sprite(x, y) constructor method.
    super(x, y);
    this.dx = 0;
    this.dy = 0;
    myColor = c;
    radius = r;
  }
  
  // Create a blob with a particular velocity vector.
  Blob(int x, int y, int r, float dx, float dy, color c)
  {
    super(x, y, dx, dy);
    myColor = c;
    radius = r;
  }
  
  // Check to see if two blobs are touching
  boolean collidesWith(Blob other)
  {
    return (this.distanceTo(other) <= (this.radius+other.radius)/2);    
  }
  
  // This is the method that is /absolutely/ required.
  // this defines how to draw the Blob; it's just a circle...
  void drawSprite()
  {
    fill(myColor);
    ellipse(x, y, radius, radius);
  }
}
