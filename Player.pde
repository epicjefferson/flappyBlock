public class Player extends Block{

  float gravity;
  float speed;
  color colour;
  
  Player(float x, float y, float playerW, float playerH){

    super(x,y,playerW,playerH);
    
    colour = #BADA55;
    gravity = .2;
    speed = 0;
  }
  
  public void display(){
    fill(colour);
    noStroke();
    rect(x,y,w,h);
  } 
  
  public void update(){
    y = y + speed;
    speed = speed + gravity;
    
    if(y > height){
      speed = 0;
    }
    if((keyPressed && key == 's') || mousePressed)
  //    speed = speed - .3;
  //    flappybird's action is more like 
      speed = -3;
    }
}
