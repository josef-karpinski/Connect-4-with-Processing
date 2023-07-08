public class Slot{
  private boolean isOccupied;
  private int slotColor = -1; // -1 = no color, 1 = black, 2 = red
  private int slotCenter_x;
  private int slotCenter_y;
  private int coordinateX;
  private int coordinateY;
  
  public Slot(int coordX, int coordY){
    slotColor = -1;
    isOccupied = false;
    this.coordinateX = coordX;
    this.coordinateY = coordY;
    slotCenter_y = 0;
  }
  
  public void drawSlot(){
    slotCenter_x = slotCoordinates[0][coordinateX];
    if(this.isOccupied()){
      //slotCenter_y = slotCoordinates[1][coordinateY];
      if(slotColor == 1){
        fill(255, 0, 0);
      }else if(slotColor == 2){
        fill(255, 255, 0);
      }
      ellipse(slotCenter_x, slotCenter_y, 96, 96);
    }
    if(this.isOccupied() == false){
      slotColor = -1;
      noStroke();
      fill(255);
      circle(slotCenter_x, slotCoordinates[1][coordinateY], 96);
      stroke(0);
    }
    if(slotCenter_y < slotCoordinates[1][coordinateY] && isOccupied()){
      slotCenter_y += 60;
    }
    if(slotCenter_y > slotCoordinates[1][coordinateY] && isOccupied()){
      slotCenter_y = slotCoordinates[1][coordinateY];
    }
  }
  
  public boolean isOccupied(){
    return isOccupied;
  }  
  
  public void setSlotColor(boolean turn){
    this.slotColor = int(!turn) + 1;
  }
  
  public int getSlotColor(){
    return slotColor;
  }
  
  public void setIsOccupied(boolean isOccupied){
    this.isOccupied = isOccupied;
  }
  
  public int getSlotCenter_y(){
    return slotCenter_y;
  }
}
