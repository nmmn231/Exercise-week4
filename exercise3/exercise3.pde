final int GAME_RUN=1, GAME_OVER=2;
int gamestate;
PImage gameover;

void setup()
{
  size(480,480);
  background(255);
  mouseX=20;
  mouseY=20;
  gamestate=GAME_RUN;
  gameover= loadImage("img/restart.png");
}

float x, a=0;
void draw()
{
 switch(gamestate){
 case GAME_RUN: 
 frameRate(10);
 background(255); 
 for(x=40;x<440;x+=40){
    fill(0,0,255);
    stroke(0);
    rect(x,0,40,190+sin(a)*30); 
    a+=5; 
    
 }
 for(x=40;x<440;x+=40){
    rect(x,290+sin(a)*30,40,300);
    a+=5;
   } 
  
  noStroke();
  fill(0,255,0,100);
  ellipse(mouseX,mouseY,30,30); 
  if(mouseX>40 && mouseY-15<=190+sin(a)*30 || mouseX<440 && mouseY+15>=290+sin(a)*30){
  gamestate=GAME_OVER;
  }
  break;
  
  case GAME_OVER:
  background(255);
  image(gameover,0,0);
  if(mouseX<=40 && mouseX>=0 && mouseY<=40 && mouseY>=0){
    if(mousePressed){
    gamestate=GAME_RUN;
    }
  break;
  }
 }
}
