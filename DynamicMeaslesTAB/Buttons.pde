int quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color buttonColour, red=#FF0000, green=#00FF00, resetWhite=#FFFFFF, orange=#FFA500, yellow=#FFFF00;

void quitButtonDraw() {
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) {
    buttonColour = red;
  } else {
    buttonColour = green;
  } //End of If
  //
  fill(buttonColour);
  rect( quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight );
  fill(resetWhite);
}//End quitButton
