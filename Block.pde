public class Block implements Collidable{

  float x,y;
  float w,h;
  
  Block(float xpos, float ypos, float blockW,float blockH){
    this.x = xpos;
    this.y = ypos;
    this.w = blockW;
    this.h = blockH;
  }
  
  public boolean collidesWith(Collidable obj){
    float objX = obj.getX();
    float objY = obj.getY();
    float objW = obj.getWidth();
    float objH = obj.getHeight();

    //determine whether any point of the 2 objects occupies the same space
    if(this.x+this.w >= objX && this.x <= objX + objW && this.y + this.h >= objY && this.y <= objY + objH)
    {
      return true;
  //    println("hit");
  //    if(wait >= 30){
  //      score++;
  //      wait=0;
  //    }
    }
    
    return false;
  }
  
  public float getX(){
    return this.x;
  }
  
  public void setX(float x){
    this.x = x;
  }

  public float getY(){
    return this.y;
  }
  
  public void setY(float y){
    this.y = y;
  }

  public float getWidth() {
    return this.w;
  }

  public void setWidth(float theWidth) {
    this.w = theWidth;
  }

  public float getHeight() {
    return this.h;
  }

  public void setHeight(float theHeight) {
    this.h = theHeight;
  }
}
