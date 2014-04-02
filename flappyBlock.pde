float x = 100;
float y = 50;
//float speed = 0;
//float gravity = .2;

Player p1;
Frienemy f1;

//float enemyX = 500;
//float enemyY = random(500);
//float enemySpeed = -5;

float squareSize=0;
int score = 0;
float wait = 0;

//int enemyColorR=0;
//int enemyColorG=0;
//int enemyColorB=0;

  
//global variables for circular path
float x1, x2, xSpeed=1, y1, rad1;
int deg=0,r=255,g=255,b=255;


void setup(){
  size(500,500);
  squareSize = width*.05;
  
  p1 = new Player(100.0,50.0,squareSize,squareSize);
  f1 = new Frienemy(width, random(height), squareSize,squareSize);
}

void draw(){
  background(0,130,150);
  fill(0);
  text(score, 50,50);
  noStroke();
  
  p1.display();
  p1.update();
  
  f1.display();
  f1.update();
  
//  //player  
//  rectMode(CENTER);
//  rect(x,y,squareSize,squareSize);
//  
//  y = y + speed;
//  print("y: ");
//  print(y);
//  
//  speed = speed + gravity;
//  print(" - speed: ");
//  println(speed);
//  
//  if(y > height){
//    speed = 0;
//  }
//  if((keyPressed && key == 's') || mousePressed)
////    speed = speed - .3;
////    flappybird's action is more like 
//    speed = -3;
//  
//  //enemy
//  stroke(0);
//  fill(enemyColorR, enemyColorG, enemyColorB);
//  rect(enemyX,enemyY, squareSize,squareSize);
//  enemyX = enemyX + enemySpeed;
//  
//  if(enemyX < 0){
//    enemyX = 500;
//    enemyY = random(500);
//    enemyColorR = int(random(255));
//    enemyColorG = int(random(255));
//    enemyColorB = int(random(255));
//  }
//  if(x+(squareSize/2)>= enemyX-(squareSize/2) && x-(squareSize/2)<= enemyX+(squareSize/2) && y+(squareSize/2) >= enemyY-(squareSize/2) && y-(squareSize/2)<=enemyY+(squareSize/2)){
//    println("hit");
//    if(wait >= 30){
//      score++;
//      wait=0;
//    }
//  }
  
  //collide with wacky block
  if(x+(squareSize/2)>= (x1+x2)-(squareSize/2) && x-(squareSize/2)<= (x1+x2)+(squareSize/2) && y+(squareSize/2) >= y1-(squareSize/2) && y-(squareSize/2)<= y1+(squareSize/2)){
    println("hit");
    if(wait >= 30){
      score++;
      wait=0;
    }
  }

  if(wait<30)
    wait++;
  
  //circular path code  
  deg=deg+4;
  x2=x2+xSpeed;
    
  rad1=radians(deg);
  x1=sin(rad1)*40+(width/2);
  y1=cos(rad1)*50+(height/2);
   
  fill(r,g,b);
  rect(x1+x2,y1,squareSize,squareSize);
  r=int(random(255));
  g=int(random(255));
  b=int(random(255));
  
  if ((x1+x2 >= width) || (x1+x2 <= 0))   //if the sum of the x values
                                          //is more or equal to  ' width '
                                          // or less or equal to 0
  {
    xSpeed = xSpeed * -1;    //invert direction
  }
  
  if(deg>=360)
  {
    deg=0;  // if deg variable reaches 360, reset to 0, which is
            // the same thing in terms of position, but prevents
            // deg from increasing up and up and up.
  }
  
  // Check collisions
  if (p1.collidesWith(f1)){
    if(wait >= 30){
      score++;
      wait = 0;
      println("hit!");
    }
  } 

}
