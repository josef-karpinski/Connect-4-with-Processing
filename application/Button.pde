public class Button{
  int center_x;
  int center_y;
  int h;
  int w;
  int curve;
  String text;
  
  public Button(){
    center_x = 0;
    center_y = 0;
    h = 100;
    w = 50;
  }
  
  public Button(int x, int y, int hi, int wi){
    center_x = x;
    center_y = y;
    h = hi;
    w = wi;
  }
  
  public Button(int x, int y, int hi, int wi, int c, String text){
    center_x = x;
    center_y = y;
    h = hi;
    w = wi;
    curve = c;
    this.text = text;
  }
  
  public void drawButton(){
    if(mouseX >= (center_x - (h/2)) && mouseX <= (center_x + (h/2)) && mouseY >= (center_y - (w/2)) && mouseY <= (center_y + (w/2))){
      fill(200);
    }else{
      fill(255);
    }
    rectMode(CENTER);
    rect(center_x, center_y, h, w, curve);
    fill(0);
    textAlign(CENTER);
    textSize(35);
    text(text, this.center_x, this.center_y + 10);
  }
  
  public boolean hitButton(){
    if(mouseX >= (center_x - (h/2)) && mouseX <= (center_x + (h/2)) && mouseY >= (center_y - (w/2)) && mouseY <= (center_y + (w/2))){
      return true;
    }
    return false;
  }
}
