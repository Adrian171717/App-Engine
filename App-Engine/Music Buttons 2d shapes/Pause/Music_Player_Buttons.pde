//Global Variables
float stopX, stopY, stopWidth, stopHeight;
float playX1, playY1, playX2, playY2, playX3, playY3;
float prevX1A, prevY1A, prevX2A, prevY2A, prevX3A, prevY3A, prevX1B, prevY1B, prevX2B, prevY2B, prevX3B, prevY3B;
float nextX1A, nextY1A, nextX2A, nextY2A, nextX3A, nextY3A, nextX1B, nextY1B, nextX2B, nextY2B, nextX3B, nextY3B;
color resetcolourNightMode=#FFFF4B;
color black=#000000; //Night mode friendly
color resetcolourDayMode=#FFFFFF; //Not night mode friendly
//
void drawMusicButtons() {
  drawPauseButton();
  drawStopButton();
  drawPlayButton();
  drawPrevButton();
}//End drawMusicButtons
//
void drawPauseButton() {
  rect( pauseX1, pauseY1, pauseWidth, pauseHeight );
  rect( pauseX2, pauseY2, pauseWidth, pauseHeight );
}//End drawPauseButton()
//
void drawStopButton() {
  rect( stopX, stopY, stopWidth, stopHeight );
  fill(black);
  stopX = pauseX1 - appWidth * 10/30 ;
  stopY = pauseY1;
  stopWidth = pauseHeight;
  stopHeight = pauseHeight;
}//End drawStopButton()
//
void drawPlayButton() {
  triangle( playX1, playY1, playX2, playY2, playX3, playY3 );
  playX1 = pauseX1;
  playY1 = pauseY1;
  playX3 = playX1;
  playY3 = pauseY1 + pauseHeight;
  playX2 = pauseX2 + pauseWidth;
  playY2 = (playY3 - playY1)*1/2 + playY1;
}//End drawPlayButton
//
void drawPrevButton() {
  triangle( prevX1A, prevY1A, prevX2A, prevY2A, prevX3A, prevY3A ); triangle( prevX1B, prevY1B, prevX2B, prevY2B, prevX3B, prevY3B );
  prevX2A = stopX;
  prevY2A = pauseY1 + appHeight * 10/30;
  prevX1A = stopX + stopWidth;
  prevY1A = prevY2A + appHeight * 3/30;
  prevX3A = prevX1A;
  prevY3A = prevY2A - appHeight * 3/30;
  prevX1B = prevX2B + stopWidth;
  prevY1B = prevY1A;
  prevX2B = prevX1A;
  prevY2B = prevY2A;
  prevX3B = prevX1B;
  prevY3B = prevY3A;
}//End drawprevButton
//
void drawNextButton() {
  triangle( nextX1A, nextY1A, nextX2A, nextY2A, nextX3A, nextY3A ); triangle( nextX1B, nextY1B, nextX2B, nextY2B, nextX3B, nextY3B );
  nextX2A = (appWidth * 1/2) + appWidth * 10/30;
  nextY2A = prevY2A; 
  nextX1A = nextX2A - stopWidth;
  nextY1A = prevY1A;
  nextX3A = nextX1A;
  nextY3A = prevY3A;
  nextX1B = nextX1A - stopWidth;
  nextY1B = nextY1A;
  nextX2B = nextX1A;
  nextY2B = nextY2A;
  nextX3B = nextX1B;
  nextY3B = nextY3A;
}//End drawNextButton
//
//End Music Player Buttons
