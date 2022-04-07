void measleDraw() {
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
}//End MeasleDraw
