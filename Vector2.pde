class Vector2
{
  float x;
  float y;  // coordinates of this Vector2
  
  //Initialize an instance of a Vector2
  Vector2(float x, float y)
  {
    this.x = x;
    this.y = y;
  }
  
  // Return the sum of this vector and another vector.
  Vector2 add(Vector2 other)
  {
    return new Vector2(this.x + other.x, this.y + other.y);
  }
  
  Vector2 subtract(Vector2 other)
  {
    return new Vector2(this.x - other.x, this.y - other.y);
  }
  
  //compute the dot product x1*x2 + y1*y2
  float dotProduct(Vector2 other)
  {
    float prod = this.x * other.x + this.y * other.y;
    return prod;
  }
  
  float magnitude()
  {
    return sqrt(x*x + y*y);
  }
}
