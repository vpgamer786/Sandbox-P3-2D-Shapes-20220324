//Global Variable
int appWidth, appHeight;
int reset, smallerDisplayDimesion, mouthOpen;
float faceX, faceY, faceDiameter;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter;
float xNose1, yNose1, xNose2, yNose2, xNose3, yNose3;
float faceSquareMeasleX, faceSquareMeasleY, faceSquareMeasleSide;
Boolean measlesOn=false, eyesOn=false;
//
void setup() 
{
  //Display Geometry
  size(1600,900); //fullScreen(); displayWidth, displayHeight
  //Landscape, not square or portrait
  display();
  population();
  face();
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
