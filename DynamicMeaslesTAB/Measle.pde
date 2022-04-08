void measleDraw() 
{
  measleDiameter = random(height*1/30, height*1/16);
  measlesX1 = random(faceSquareMeasleX+height*16/75, faceSquareMeasleX+faceSquareMeasleSide-height*16/75);
  measlesY1 = random(faceSquareMeasleY+height*9/75, faceSquareMeasleY+faceSquareMeasleSide-height*9/75);
  measlesX2 = random(faceSquareMeasleX+height*9/75, faceSquareMeasleX+faceSquareMeasleSide-height*9/75);
  measlesY2 = random(faceSquareMeasleY+height*16/75, faceSquareMeasleY+faceSquareMeasleSide-height*16/75);
  //
  fill(measleColour);
  ellipse(measlesX1, measlesY1, measleDiameter, measleDiameter);
  ellipse(measlesX2, measlesY2, measleDiameter, measleDiameter);
  //
}//End MeasleDraw

float measleDiameter, measlesX1, measlesY1, measlesX2, measlesY2;
color measleColour = #FF0000;
