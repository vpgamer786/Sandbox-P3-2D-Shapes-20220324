//Global Variabl//
float imageLeftEyeX, imageLeftEyeY;
PImage pic1;
//
void leftEyeDraw() {
  //Left Eye
  //rect(leftEyeX-eyeDiameter*1/2, leftEyeY-eyeDiameter*1/2, eyeDiameter, eyeDiameter);
 //ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameterY);
 image(pic1, imageLeftEyeX, imageLeftEyeY);
}//End leftEyeDraw
