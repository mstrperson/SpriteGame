class Asteroid extends Sprite
{
  float[] coordinates;
  int numVerts;
  float dRot;
  
  Asteroid(float x, float y, float rad)
  {
    super(x, y, random(10) - 5, random(10) - 5);
    dRot = (PI/600) * (random(10) - 5);
    
    numVerts = (int)random(5) + 3;
    
    float vx = 1, vy = 0;
    coordinates = new float[numVerts * 2];
    for(int i=0; i< numVerts * 2; i+=2)
    {
      float mag = (rad/2) + random(rad/2);
      float xi = x + (mag * vx);
      float yi = y + (mag * vy);
      
      coordinates[i] = xi;
      coordinates[i+1] = yi;
      
      float tvx = vx;
      
      vx = cos(2*PI/numVerts) * vx - sin(2*PI / numVerts) * vy;
      vy = sin(2*PI/numVerts) * tvx + cos(2*PI / numVerts) * vy;
    }
  }
  
  void move()
  {
    float x0 = x, y0 = y;
    super.move();
    float xChange = x - x0, yChange = y - y0;
    
    for(int i = 0; i < numVerts * 2; i+=2)
    {
      coordinates[i] += xChange;
      coordinates[i+1] += yChange;
      
      float delX = coordinates[i] - x;
      float delY = coordinates[i+1] - y;
      
      float rotX = cos(dRot) * delX - sin(dRot) * delY;
      float rotY = sin(dRot) * delX + cos(dRot) * delY;
      
      coordinates[i] = x + rotX;
      coordinates[i+1] = y + rotY;
    }
  }
  
  void drawSprite()
  {
    fill(255, 255, 255);
    stroke(255, 255, 255);
    beginShape();
    for(int i = 0; i < numVerts * 2; i+=2)
    {
      vertex(coordinates[i], coordinates[i+1]);
      //println("( " + coordinates[i] + ", " + coordinates[i+1] + ")");
    }
    endShape(CLOSE);
    //println("________________________________");
  }
}
