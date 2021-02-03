public class Coin extends Sprite
{
  
  // Coin doesn't move!  Just sits there.
  public Coin(float x, float y)
  {
    super(x, y);
  }
  
  public void drawSprite()
  {
    fill(120, 80, 10);
    strokeWeight(3);
    stroke(0);
    //coin has a diameter of 50px
    ellipse(x, y, 50, 50);
  }
}
