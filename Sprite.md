# Sprite
Sprite is an abstract class representing something that will move around the screen a Sprite must know it's current position (x, y) and it's velocity vector <dx, dy> by default a Sprite starts with <0, 0> velocity. 
Included in the Sprite class are a few standard methods that are useful--see comments

## Attributes / Properties / Instance Variables
```
float x, y
```
represent the Sprite's coordinate location on the screen.
```
float dx, dy
```  
represent the Sprite's velocity vector.

## Constructors
```
Sprite(float x, float y)
```
Initialize a Sprite at the given location with zero velocity.

```
Sprite(float x, float y, float dx, float dy)
```
Initialize a Sprite at the given location with a given velocity.

## Basic Methods
```
boolean collidesWith(color c)
```
Standard color check.  Only looks at the point (x, y)

```
float distanceTo(Sprite other)
```
Returns the distance between this Sprite and another using their respective (x, y) coordinates.

```
void moveTo(float x, floaty)
```
Directly set the position of this Sprite.

```
void setVelocity(float dx, float dy)
```
Directly set the velocity of this Sprite.

## Movement Methods
```
void move()
```
Simple auto move.  Increment `x` and `y` by `dx` and `dy` respectively followed by a `boundaryCheck()`

```
void followMouse()
```
The Sprite moves at the speed (magnitude of velocity vector) toward the mouse pointer.

```
void chase(Sprite other)
```
Like `followMouse()` except it goes in the direction of another Sprite instead of the mouse.

```
void chase(Sprite other, float minFollowDistance)
```
Do `chase(other)` except stay a at least a defined distance away.

## Additional Global Settings
### ScreenMode
ScreenMode enumeration lets you choose the behavior of Sprites that hit the boundary of the screen.
* Loop:  Screen is a Torus
* Bounce:  Sprites bounce off of each of the boundary walls
* Stop:  Sprites stop when they hit a boundary wall.
