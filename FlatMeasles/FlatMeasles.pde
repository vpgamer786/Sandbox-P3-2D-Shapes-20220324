//Global Variables
int smallerGeometryDimension;
float rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight;
float faceX, faceY, faceDiameter;
float leftEyeX, leftEyeY, rightEyeX, rightEyeY, eyeDiameter;
//
//Display Geometry
fullScreen(); //fullScreen(); displayWidth, displayHeight
//Landscape, square or portrait
int appWidth = width, appHeight = height;
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
//Variable Population
smallerGeometryDimension = appHeight; //user told to turn phun, always landscape or square
rectFaceX = appWidth*1/2 - smallerGeometryDimension*1/2;
rectFaceY = appHeight*0;
rectFaceWidth = smallerGeometryDimension;
rectFaceHeight = smallerGeometryDimension;
faceX = appWidth*1/2;
faceY = appHeight*1/2;
faceDiameter = smallerGeometryDimension;
leftEyeX = appWidth*1/2 - smallerGeometryDimension*1/4;
leftEyeY = appHeight*1/2 - smallerGeometryDimension*1/4;
rightEyeX = appWidth*1/2 + smallerGeometryDimension*1/4;
rightEyeY = leftEyeY;
eyeDiameter = smallerGeometryDimension*1/4;
//
//Face: Circle, inscribed in a square
//Center a circle on display orientation (landscape)
rect(rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight);
ellipse(faceX, faceY, faceDiameter, faceDiameter);
//
//Left Eye
//rect();
ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
//
//Right Eye
//rect();
ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
//
//Nose
//rect();
//triangle();
//
//Mouth
//rect();
//line();
//
//Measle
//rect();
//ellipse();
