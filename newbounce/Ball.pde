class Ball //this is the name of the class, which is used multiple times
{
  int x=0; //the value 0 is assigned to x
  int y; //there is no value assigned to y
  int speedX; //this is the speed of the x position 
  int speedY; //this is the speed of the y position 
  PImage img1, img2, img3, img4; //this is the inage of the ball I am using
  
  Ball(int y, int speed) //constructor; the ball will have a y pos and speed//
  {
    this.y = y; //this.y equals y; this means it will equal the value given to int y
    img1 = loadImage("img1.png");
    img2 =loadImage("img2.png");
    img3 = loadImage("img3.png");
    img4 = loadImage("img4.png");
    
    
    this.speedX = speed;
    this.speedY = speed;
    this.x = (int) random(10,width-10); //picking random number between 20 and width - 20
  } //(int) makes it a whole number
  
  void render() 
  {
    if (speedX <= -1 && speedY <= -1)
      image(img1,x,y);
      
    else if (speedX >= 1 && speedY <= -1)
    image(img2,x,y);
    
    else if (speedX <= -1 && speedY >= 1)
    image(img3,x,y);
    
    else if (speedX >= 1 && speedY >= 1)
    image(img4,x,y);
  }
  
  void move() //this will make the ball move where I want
  {
    x=x+speedX; //x equals x plus speedX
    y=y+speedY; //y equals y plus speedy
    
    if(y>211) //if y is more than 211
    {
      speedY= -speedY; //then speedY will minus speedY - so it doesn't go out of the screen
    }
    
    if(y<0) //if y is less than 0
    {
      speedY= -speedY; //then speedY will minus speedY - so it doesn't 
    }
    
    if(x>463) //if x is more than 463
    {
    speedX= -speedX; //then speedX will minus speedX - so it doesn't go out of the screen
  }
  
  if(x<0) //if x is less than 0
  {
    speedX = -speedX; //then speedX will minus speedX - so it doesn't go out of the screen
  }
    
  }
  
  void collisionwith(Ball other) //this is declaring a collision with the balls
  {
    if(abs(other.x - this.x)<40 && //absolute value; means to make it positive
    abs(other.y - this.y)<30) // ball other y - this.y; it is less than 40
    {
      speedY = -speedY; //speedY will equal minus -speedY
      speedX = -speedX; //speedX will equal minus -speedX
    }
  }
    
  
 
  
  
  
  
}