# Sprite
Sprite is an abstract class representing something that will move around the screen a Sprite must know it's current position (x, y) and it's velocity vector <dx, dy> by default a Sprite starts with <0, 0> velocity. 
Included in the Sprite class are a few standard methods that are useful--see comments

## Attributes / Properties / Instance Variables
`float x, y`    represent the Sprite's coordinate location on the screen.
`float dx, dy`  represent the Sprite's velocity vector.

## Constructors
`Sprite(float x, float y)`
Initialize a Sprite at the given location with zero velocity.

`Sprite(float x, float y, float dx, float dy)`
Initialize a Sprite at the given location with a given velocity.

## Basic Methods
`boolean collidesWith(color c)`
Standard color check.  Only looks at the point (x, y)

`float distanceTo(Sprite other)`
Returns the distance between this Sprite and another using their respective (x, y) coordinates.


