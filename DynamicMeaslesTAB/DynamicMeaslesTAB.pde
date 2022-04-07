//Global Variable
int appWidth, appHeight;
//
int reset, smallerDisplayDimesion, mouthOpen;
float rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight;
float faceX, faceY, faceDiameter;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter;
float mouthX1, mouthY1, mouthX2, mouthY2;
float xNose1, yNose1, xNose2, yNose2, xNose3, yNose3;
//
void setup() 
{
  //Display Geometry
  size(600, 400); //fullScreen(); displayWidth, displayHeight
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
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//End Main Program
