boolean isFirstPlayerTurn = true; // 1 or 2
int[][] slotCoordinates = { {62, 175, 287, 400, 512, 625, 737},  //x
                            {50, 150, 250, 350, 450, 550} };     //y
Grid theGrid = new Grid();
boolean endGame = false;
boolean tieGame = false;
Button restartGameButton = new Button(400, 410, 250, 75, 7, "Restart");
PImage board;

public void setup(){
  size(800, 600);
  board = loadImage("data/Connect4Board.png");
}
  
public void draw(){
  background(255,255,255);
  theGrid.drawGrid();
  theGrid.checkEndGame();
  endGame();
  System.out.println(mouseX);
  
    
}

public void mousePressed(){
  if(!endGame){
    theGrid.playTurn(mouseX, mouseY);
  }
  else if(endGame){
    if(restartGameButton.hitButton()){
      resetGame();
    }
  }
  
}

public void keyPressed(){
  if(key == 'r' || key == 'R'){
    resetGame();
  }
}

public void resetGame(){
  endGame = false;
  theGrid = new Grid();
  isFirstPlayerTurn = true;
}

public void endGame(){
  if(endGame){
    fill(192,192,192,200);
    rectMode(CENTER);
    rect(width/2, height/2, 600, 350 ,7);
    restartGameButton.drawButton();
    if(tieGame){
      textSize(55);
      fill(0);
      textAlign(CENTER);
      text("Tie Game", 400, 250);
    }else{
      textSize(55);
      textAlign(CENTER);
      if(isFirstPlayerTurn){
        fill(255, 255, 0);
        text("Yellow Wins!", 400, 250);
      }else{
        fill(255, 0, 0);
        text("Red Wins!", 400, 250);
      }
    }
    
  }
}
