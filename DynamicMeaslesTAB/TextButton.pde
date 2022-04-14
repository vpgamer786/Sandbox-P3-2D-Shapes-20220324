//Global Variable
String ButtonText= "Quit Canvas";
PFont titleFont;

void title() {
  titleFont = createFont ("Cambria", 50);
  fill(black);
  textFont(titleFont, 75);
  text(titleX, titleY, titleWidth, titleHeight);
  fill(resetWhite);
}//End title


void formatButton() {
  fill(black);
  textAlign (CENTER, CENTER);
  textFont(titleFont, 20);
}//End ButtonFormat


void buttonText() {
  formatButton();
  text(ButtonText, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  fill(resetWhite);
}//End buttonText
