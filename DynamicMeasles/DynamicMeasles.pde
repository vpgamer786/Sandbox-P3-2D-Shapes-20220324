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
  //Landscape, square or portrait
  appWidth = width;//Swap wityh displayWidth, displayHeight for testing 
  appHeight = height;
  println(width, height, displayWidth, displayHeight); //Verification of value
  println(appWidth, appHeight); //Canvas Flexibility
  //
  //Display Orientation
  //Purpose: a few comparisons of IFs to ID orientation (similar to image() aspect ratio)
  //Computer tells us the orientation, important for cell phone orientation
  //-tell user specific orientation
  //if ( appWidth >= appHeight ) {println("Landscape or Square");} else {println("Portrait");}
  String ls="Landscape or Square", p="Portrait", DO="Display Orientation:", instruct="Bru, turn your phun";
  String orientation = ( appWidth >= appHeight ) ? ls : p; //Ternary Operator, repeats IF-ELSE
  println(DO, orientation); //Verification of Value
  if ( orientation==p ) println(instruct);
  //With Strings, easier to print to console or canvas
  //
  //Variable Population: notice using appWidth & appHeight to move between size() & fullScreen()
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
  rightEyeY = leftEyeY; //Best Practice: change one line of code
  eyeDiameter = smallerDisplayDimesion*1/4;
  mouthX1 = leftEyeX;
  mouthY1 = appHeight*3/4;
  mouthX2 = rightEyeX;
  mouthY2 = mouthY1;
  mouthOpen = smallerDisplayDimesion*1/4;
  xNose1 = faceX;
  yNose1 = leftEyeY;
  xNose2 = faceX - leftEyeY*1/2;
  yNose2 = faceY ;
  xNose3 = faceX + leftEyeY*1/2;
  yNose3 = faceY;
  //
  //Face: Circle = Inscribing a Circle in a Square
  //Center a circle on display orientation
  //rect(rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight);
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
  //
}//End setup
//
void draw() 
{
  //Measle
  float measleDiameter = random( smallerDisplayDimesion*1/100, smallerDisplayDimesion*1/25);
  float measleRadius = measleDiameter*1/2;
  float measleX = random( rectFaceX+measleRadius, (( rectFaceX+rectFaceWidth ) - measleRadius ) );
  float measleY = random( rectFaceY+measleRadius, (( rectFaceY+rectFaceWidth ) - measleRadius ) );
  Boolean nightMode=false; //Note: IF-ELSE similar to ternary operator
  //color red=#FF0000, measleColour=red, WhiteReset=#000000; //Note: need range here too
  color measleColour = ( nightMode==false ) ? color( 255, random(0, 50), random(120) ) : color( 255, random(0, 50), 0 );
  color whiteReset=#000000;
  //
  float measleRectX = measleX-measleDiameter*1/2;
  float measleRectY = measleY-measleDiameter*1/2;
  float measleWidth = measleDiameter;
  float measleHeight = measleDiameter;
  //rect( measleRectX, measleRectY, measleWidth, measleHeight );
  //random values given other variables (similar to button code)
  noStroke(); //Shape outline
  fill(measleColour);
  ellipse( measleX, measleY, measleDiameter, measleDiameter );
  stroke(reset); //reset to 1 pixel
  fill(whiteReset); //reset to first colour (i.e. blackReset)
  //
  //Left Eye
  //rect(leftEyeX-eyeDiameter*1/2, leftEyeY-eyeDiameter*1/2, eyeDiameter, eyeDiameter);
  ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
  //
  //Right Eye
  //rect(rightEyeX-eyeDiameter*1/2, rightEyeY-eyeDiameter*1/2, eyeDiameter, eyeDiameter);
  ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
  //
  //Nose
  //rect(xNose2, yNose1, xNose3-xNose2, yNose3-yNose1);
  triangle(xNose1, yNose1, xNose2, yNose2, xNose3, yNose3);
  //
  //Mouth
  int mouthWidth = int ( mouthX2 - mouthX1 ); //length=end-beginning
  int mouthHeight = mouthOpen;
  //rect(mouthX1-mouthHeight*1/2, mouthY1-mouthHeight*1/2, mouthWidth+mouthOpen, mouthHeight);
  strokeWeight(mouthOpen); //testing: 100=400/4, mouthOpen=height*1/4
  line(mouthX1, mouthY1, mouthX2, mouthY2);
  strokeWeight(reset); //reset to 1 pixel
  //comparison rect() line only, no caps, no strokeWeight
  //rect(mouthX1, mouthY1, mouthWidth, mouthHeight);
  //
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//End Main Program
