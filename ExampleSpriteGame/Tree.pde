class Tree extends Sprite
{
  // Create a Tree at the point X, Y
  Tree(float x, float y)
  {
    // super -> Sprite(x, y)
    super(x, y);
  }
  
  // draw that tree.
  void drawSprite()
  {
    fill(#9B570E);
    rect(x, y, 30, 60);
    fill(#1C8101);
    triangle(x-15, y+10, x+15, y-30, x+45, y+10);
  }
}
