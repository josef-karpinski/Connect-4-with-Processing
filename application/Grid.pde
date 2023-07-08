public class Grid{
  private Slot[][] grid;
  
  public Grid(){
    grid = new Slot[6][7];
    for(int row = 0; row < 6; row++){
        for(int col = 0; col < 7; col++){
          grid[row][col] = new Slot(col, row);
        }
    }
  }
  
  public void drawGrid(){
    image(board, 0, 0, 800, 600);
    for(int row = 0; row < 6; row++){
      for(int col = 0; col < 7; col++){
          grid[row][col].drawSlot();            
      }
    }
    
  }
  
  public void playTurn(int x, int y){
    if(endGame == false){ 
      if(x > 682){
        for(int row = 5; row >= 0; row--){
          if(!(grid[row][6].isOccupied())){
            grid[row][6].setIsOccupied(true);
            grid[row][6].setSlotColor(isFirstPlayerTurn);
            isFirstPlayerTurn = !isFirstPlayerTurn;
            break;
          }
        }
      }else if(x > 567){
        for(int row = 5; row >= 0; row--){
          if(!(grid[row][5].isOccupied())){
            grid[row][5].setIsOccupied(true);
            grid[row][5].setSlotColor(isFirstPlayerTurn);
            isFirstPlayerTurn = !isFirstPlayerTurn;
            break;
          }
        }
      }else if(x > 452){
        for(int row = 5; row >= 0; row--){
          if(!(grid[row][4].isOccupied())){
            grid[row][4].setIsOccupied(true);
            grid[row][4].setSlotColor(isFirstPlayerTurn);
            isFirstPlayerTurn = !isFirstPlayerTurn;
            break;
          }
        }
      }else if(x > 337){
        for(int row = 5; row >= 0; row--){
          if(!(grid[row][3].isOccupied())){
            grid[row][3].setIsOccupied(true);
            grid[row][3].setSlotColor(isFirstPlayerTurn);
            isFirstPlayerTurn = !isFirstPlayerTurn;
            break;
          }
        }
      }else if(x > 222){
        for(int row = 5; row >= 0; row--){
          if(!(grid[row][2].isOccupied())){
            grid[row][2].setIsOccupied(true);
            grid[row][2].setSlotColor(isFirstPlayerTurn);
            isFirstPlayerTurn = !isFirstPlayerTurn;
            break;
          }
        }
      }else if(x > 107){
        for(int row = 5; row >= 0; row--){
          if(!(grid[row][1].isOccupied())){
            grid[row][1].setIsOccupied(true);
            grid[row][1].setSlotColor(isFirstPlayerTurn);
            isFirstPlayerTurn = !isFirstPlayerTurn;
            break;
          }
        }
      }else if(x > 0){
        for(int row = 5; row >= 0; row--){
          if(!(grid[row][0].isOccupied())){
            grid[row][0].setIsOccupied(true);
            grid[row][0].setSlotColor(isFirstPlayerTurn);
            isFirstPlayerTurn = !isFirstPlayerTurn;
            break;
          }
        }
      } 
    } 
   }
  
  public void checkEndGame(){
    if(checkDiag() || checkHoriz() || checkVert()){
      endGame = true;
    }
    if(checkTie()){
      endGame = true;
      tieGame = true;
    }
  }
  
  public boolean checkTie(){
      for(int col = 0; col < 7; col++){
        if(!grid[0][col].isOccupied()){
          return false;
        }
      }
    return true;
  }
  
  
  
  public boolean checkDiag(){
    if(checkLeftDiag() || checkRightDiag()){
      return true;
    }
    return false;
  }
  
  public boolean checkHoriz(){
    for(int row = 0; row < 6; row++){
      for(int col = 0; col < 4; col++){
        if(grid[row][col].isOccupied()){
          if(grid[row][col].getSlotColor() == grid[row][col+1].getSlotColor() && grid[row][col+1].getSlotColor() == grid[row][col+2].getSlotColor() && grid[row][col+2].getSlotColor() == grid[row][col+3].getSlotColor()){
            return true;
          }
        }
      }
    }
    return false;
  }
  
  public boolean checkVert(){
    for(int row = 0; row < 3; row++){
      for(int col = 0; col < 7; col++){
        if(grid[row][col].isOccupied()){
          if(grid[row][col].getSlotColor() == grid[row+1][col].getSlotColor() && grid[row+1][col].getSlotColor() == grid[row+2][col].getSlotColor() && grid[row+2][col].getSlotColor() == grid[row+3][col].getSlotColor()){
            return true;
          }
        }
      }
    }
    return false;
  }
  
  public boolean checkLeftDiag(){
    for(int row = 3; row < 6; row++){
      for(int col = 0; col < 4; col++){
        if(grid[row][col].isOccupied()){
          if(grid[row][col].getSlotColor() == grid[row-1][col+1].getSlotColor() && grid[row-1][col+1].getSlotColor() == grid[row-2][col+2].getSlotColor() && grid[row-2][col+2].getSlotColor() == grid[row-3][col+3].getSlotColor()){
            return true;
          }
        }
      }  
    }
    
    return false;
  }
  
  public boolean checkRightDiag(){
    for(int row = 0; row < 3; row++){
      for(int col = 0; col < 4; col++){
        if(grid[row][col].isOccupied()){
          if(grid[row][col].getSlotColor() == grid[row+1][col+1].getSlotColor() && grid[row+1][col+1].getSlotColor() == grid[row+2][col+2].getSlotColor() && grid[row+2][col+2].getSlotColor() == grid[row+3][col+3].getSlotColor()){
            return true;
          }
        }
      }
    }
    return false;
  }
  
}
