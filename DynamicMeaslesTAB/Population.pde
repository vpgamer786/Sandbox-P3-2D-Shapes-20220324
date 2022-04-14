void population() {
  //
  titleX = width*1/40;
  titleY = height*1/20;
  titleWidth = width*3/5;
  titleHeight = height*1/10;
  smallerDisplayDimesion = appHeight; //ALWAYS in Landscape
  reset = smallerDisplayDimesion / smallerDisplayDimesion;
  rectFaceX = (appWidth*1/2) - (smallerDisplayDimesion*1/2); //return "1"
  rectFaceY = appHeight*0;
  rectFaceWidth = smallerDisplayDimesion;
  rectFaceHeight = smallerDisplayDimesion;
  faceX = appWidth*1/2;
  faceY = appHeight*1/2;
  faceDiameter = smallerDisplayDimesion;
  leftEyeX = appWidth*1.4/4;
  rightEyeX = appWidth*2.6/4;
  leftEyeY = appHeight*1/4;
  //rightEyeY = appHeight*1/4; //Best Practice: change one line of code
  //eyeDiameter = smallerDisplayDimesion*1/4;
  //mouthX1 = leftEyeX;
  //mouthY1 = appHeight*3/4;
  //mouthX2 = rightEyeX;
  //mouthY2 = mouthY1;
  mouthOpen = smallerDisplayDimesion*1/4;
  xNose1 = faceX;
  yNose1 = leftEyeY;
  xNose2 = faceX - leftEyeY*1/2;
  yNose2 = faceY ;
  xNose3 = faceX + leftEyeY*1/2;
  yNose3 = faceY;
  faceSquareMeasleX = appWidth*1/2-appHeight*1/2;
  faceSquareMeasleY = appHeight*0;
  faceSquareMeasleSide = appHeight;
  pic = loadImage ("mouth.png");
  imageMouthX = appWidth*11.5/30;
  imageMouthY = appHeight*5.5/10;
  pic1 = loadImage ("Eye.png");
  imageLeftEyeX = appWidth*1.1/4;
  imageLeftEyeY = appHeight*1/15;
  pic2 = loadImage ("Eye.png");
  imageRightEyeX2 = appWidth*2/4;
  imageRightEyeY2 = appHeight*1/15;
  //
  quitButtonX = width*1/30;
  quitButtonY = height*1/5;
  quitButtonWidth = height*1/4;
  quitButtonHeight = height*1/10;
  
  //
}//End population
