public class Frienemy extends Block{
  color colour;
  float speed;
  
  Frienemy(float x, float y, float theWidth, float theHeight){
    super(x,y,theWidth, theHeight);
    colour = #BF0F0F;
    this.speed = random(-5.0);
  }
  
  public void display(){
    fill(colour);
    rect(x,y,w,h);
  }
  
  public void update(){
    x = x + speed;
  }
}
