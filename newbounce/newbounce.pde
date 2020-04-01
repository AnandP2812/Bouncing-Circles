Ball A; //this is the name of the first ball
Ball B; //this is the name of the second ball
Ball C; //this is the name of the third ball

void setup() //this is where variables and functions are declared
{
  size(500,250); //the size of the screen
  A = new Ball(0,2); //Ball; the first value is the Y pos; the second is the speed
  B = new Ball(80,2); //Ball; the first value is the Y pos; the second is the speed
  C = new Ball(180,2); //Ball; the first value is the Y pos; the second is the speed
}


void draw() //this executes the function
{
  background(125); //this is the background colour
  A.render(); //makes the ball appear
  A.move(); //makes the ball move 
  B.render(); //makes the ball appear
  B.move(); //makes the ball move 
  C.render(); //makes the ball appear
  C.move(); //makes the ball move 
  A.collisionwith(B); //this is ball A colliding with ball B
  B.collisionwith(A); //this is ball B colliding with ball A
  B.collisionwith(C); //this is ball B colliding with ball C
  C.collisionwith(B); //this is ball C colliding with ball B
  A.collisionwith(C); //this is ball A colliding with ball C
  C.collisionwith(A); //this is ball C colliding with ball A
  
}