//Global Variable
int appWidth, appHeight;
int reset, smallerDisplayDimesion, mouthOpen;
float faceX, faceY, faceDiameter;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter;
float xNose1, yNose1, xNose2, yNose2, xNose3, yNose3;
float faceSquareMeasleX, faceSquareMeasleY, faceSquareMeasleSide;
Boolean measlesOn=false, eyesOn=false;
int titleX, titleY, titleWidth, titleHeight;
//
void setup() 
{
  //Display Geometry
  fullScreen(); //fullScreen(); displayWidth, displayHeight
  //Landscape, not square or portrait
  display();
  population();
  face();
  title();
  //
}//End setup
//
void draw() 
{
  measleDraw();
  leftEyeDraw();
  rightEyeDraw();
  noseDraw();
  mouth();
  quitButtonDraw();
  buttonText();
}//End draw
//
void keyPressed() {
  if (key == 'Q' || key == 'q') exit();
}//End keyPressed
//
void mousePressed() {
  eyesOn = false;
  measlesOn = false;
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) exit();
}//End mousePressed
//
//End Main Program
