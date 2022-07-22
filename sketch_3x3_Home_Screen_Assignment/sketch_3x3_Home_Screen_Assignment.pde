//Global Variables
float rectWidth, rectHeight;
float rectX1, rectY1, rectX2, rectY2, rectX3, rectY3, rectX4, rectY4, rectX5, rectY5, rectX6, rectY6, rectX7, rectY7, rectX8, rectY8, rectX9, rectY9;
String title1 = "Start!";
float titleX1, titleY1, titleWidth1, titleHeight1;
PFont titleFont1;
color purple=#2C08FF, resetDefaultInk=#FFFFFF; //not nightMode friendly
int titleSize;
float startButtonX, startButtonY, startButtonWidth, startButtonHeight;
color yellow=#FFFF00, resetButtonColour=#FFFFFF, buttonFill; //Not Night Mode Friendly Colours
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
String title2= "Quit";
float titleX2, titleY2, titleWidth2, titleHeight2;
PFont titleFont2;
color red=#FF0303;
String title3 = "Life is like a box of chocolates";
float titleX3, titleY3, titleWidth3, titleHeight3;
PFont titleFont3;
Boolean rect1ON=false;
String title4 = "You need to experience all, to see what your potential is";
float titleX4, titleY4, titleWidth4, titleHeight4;
PFont titleFont4;
float nextButtonX1, nextButtonY1, nextButtonWidth1, nextButtonHeight1;
Boolean rect2ON=false;
float nextButtonX2, nextButtonY2, nextButtonWidth2, nextButtonHeight2;
Boolean rect3ON=false;
String title5 = "Pick One Chocolate";
float titleX5, titleY5, titleWidth5, titleHeight5;
PFont titleFont5;
//
void setup ()  
{ 
  //CANVAS
  size(900, 600);
  println (width, height, displayWidth, displayHeight);
  int appWidth = width;
  int appHeight = height;
  if ( width > displayWidth || height > displayHeight ) { //CANVAS in Display Checker
    //CANVAS Too Big
    appWidth = displayWidth;
    appHeight = displayHeight;
    println("CANVAS needed to be readjusted to fit on your monitor.");
  } else {
    println("CANVAS is Good to go on your display.");
  }//End CANVAS in Display Checker
  //Display Orientation
  String ls="Landscape or Square", p="portraint", DO="Display Orientation:", instruct="Bru, turn your phun";
  String orientation = ( appWidth>=appHeight ) ? ls : p; //Ternary Operator, repeats the IF-Else structure to populate a variable
  println( DO, orientation );
  if ( orientation==ls ) { //Test for chosen display orientation
    println("Good to Go");
  } else {
    appWidth *= 0; //asignment operator, works like appWidth=appWidth*0
    appHeight *= 0;
    println(instruct);
  }
  //Population
  rectWidth=width/3;
  rectHeight=height/3;
  //
  rectX1=width*0;
  rectY1=height*0;
  rectX2=width*1/3;
  rectY2=height*0;
  rectX3=width*2/3;
  rectY3=height*0;
  rectX4=width*0;
  rectY4=height*1/3;
  rectX5=width*1/3;
  rectY5=height*1/3;
  rectX6=width*2/3;
  rectY6=height*1/3;
  rectX7=width*0;
  rectY7=height*2/3;
  rectX8=width*1/3;
  rectY8=height*2/3;
  rectX9=width*2/3;
  rectY9=height*2/3;
  //Text Population
  titleX1 = width*1/3;
  titleY1 = height*1/3;
  titleWidth1 = width/3;
  titleHeight1 = height/3;
  //
  startButtonX=width*1/2.2;
  startButtonY=height*1/1.75;
  startButtonWidth=width/10;
  startButtonHeight=height/10;
  //
  quitButtonX=width*1/2.2;
  quitButtonY=height*1/20;
  quitButtonWidth=width/20;
  quitButtonHeight=height/20;
  //
  titleX2=width*1/2;
  titleY2=height*1/50;
  titleWidth2=width/10;
  titleHeight2=height/10;
  //
  titleX3=width*1/20;
  titleY3=height*1/20;
  titleWidth3=width/5;
  titleHeight3=height/5;
  //
  titleX4=width*1/20;
  titleY4=height*1/2.5;
  titleWidth4=width/5;
  titleHeight4=height/5;
  //
  titleX5=width*1/20;
  titleY5=height*1/1.5;
  titleWidth5=width/5;
  titleHeight5=height/5;
  //
  nextButtonX1=width*1/20;
  nextButtonY1=height*1/4;
  nextButtonWidth1=width/20;
  nextButtonHeight1=height/20;
  //
   nextButtonX2=width*1/20;
   nextButtonY2=height*1/1.65;
   nextButtonWidth2=width/20;
   nextButtonHeight2=height/20;
  //
  rect(rectX1, rectY1, rectWidth, rectHeight);
  rect(rectX2, rectY2, rectWidth, rectHeight);
  rect(rectX3, rectY3, rectWidth, rectHeight);
  rect(rectX4, rectY4, rectWidth, rectHeight);
  rect(rectX5, rectY5, rectWidth, rectHeight);
  rect(rectX6, rectY6, rectWidth, rectHeight);
  rect(rectX7, rectY7, rectWidth, rectHeight);
  rect(rectX8, rectY8, rectWidth, rectHeight);
  rect(rectX9, rectY9, rectWidth, rectHeight);
  //
  //Single Executed Code
  //Fonts from OS (Operating System)
  titleFont1 = createFont("Harrington", 55); //Verify the font exists in Processing.JAVA
  titleFont2 = createFont("Harrington", 25); //Verify the font exists in Processing.JAVA
  titleFont3 = createFont("Harrington", 25); //Verify the font exists in Processing.JAVA
  titleFont4 = createFont("Harrington", 25); //Verify the font exists in Processing.JAVA
  titleFont5 = createFont("Harrington", 25); //Verify the font exists in Processing.JAVA
  // Tools / Create Font / Find Font in list to verify / Do not press "OK", known bug
  //
}//End setup
//
void draw() 
{

  //Layout our text space and typographical features
  rect(titleX1, titleY1, titleWidth1, titleHeight1);
  rect( titleX2, titleY2, titleWidth2, titleHeight2);
  if (rect1ON==true)rect(titleX3, titleY3, titleWidth3, titleHeight3);
  if (rect2ON==true)rect( titleX4, titleY4, titleWidth4, titleHeight4);
  if (rect3ON==true)rect( titleX5, titleY5, titleWidth5, titleHeight5);
  //
  fill(purple); //Ink, hexidecimal copied from Color Selector
  textAlign( CENTER, CENTER); //Align X*Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | Right ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  titleSize = 50; //Change this number until it fits
  textFont(titleFont1, titleSize);
  text(title1, titleX1, titleY1, titleWidth1, titleHeight1);
  fill(resetDefaultInk);
  //
  //
  fill(purple); //Ink, hexidecimal copied from Color Selector
  textAlign( CENTER, CENTER); //Align X*Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | Right ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  titleSize = 25; //Change this number until it fits
  textFont(titleFont2, titleSize);
  text(title2, titleX2, titleY2, titleWidth2, titleHeight2);
  fill(resetDefaultInk);
  //
  fill(purple); //Ink, hexidecimal copied from Color Selector
  textAlign( CENTER, CENTER); //Align X*Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | Right ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  titleSize = 20; //Change this number until it fits
  if (rect1ON==true)textFont(titleFont3, titleSize);
  if (rect1ON==true)text(title3, titleX3, titleY3, titleWidth3, titleHeight3);
  fill(resetDefaultInk);
  //
  fill(purple); //Ink, hexidecimal copied from Color Selector
  textAlign( CENTER, CENTER); //Align X*Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | Right ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  titleSize = 20; //Change this number until it fits
  if (rect2ON==true)textFont(titleFont4, titleSize);
  if (rect2ON==true)text(title4, titleX4, titleY4, titleWidth4, titleHeight4);
  fill(resetDefaultInk);
  //
   fill(purple); //Ink, hexidecimal copied from Color Selector
  textAlign( CENTER, CENTER); //Align X*Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | Right ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  titleSize = 20; //Change this number until it fits
  if (rect3ON==true)textFont(titleFont5, titleSize);
  if (rect3ON==true)text(title5, titleX5, titleY5, titleWidth5, titleHeight5);
  fill(resetDefaultInk);
  //
  //Hover-over
  if ( mouseX>startButtonX && mouseX<startButtonX+startButtonWidth && mouseY>startButtonY && mouseY<startButtonY+startButtonHeight ) {
    buttonFill = yellow;
  } else {
    buttonFill = purple;
  }//End Hover-Over
  fill(buttonFill); //2-colours to start, remember that nightMode adds choice
  rect(startButtonX, startButtonY, startButtonWidth, startButtonHeight);
  fill(resetButtonColour);
  //
  //Hover-over
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) {
    buttonFill = red;
  } else {
    buttonFill = purple;
  }//End Hover-Over
  fill(buttonFill); //2-colours to start, remember that nightMode adds choice
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  fill(resetButtonColour);
  //
  //Hover-over
  if ( mouseX>nextButtonX1 && mouseX<nextButtonX1+nextButtonWidth1 && mouseY>nextButtonY1 && mouseY<nextButtonY1+nextButtonHeight1) {
    buttonFill = red;
  } else {
    buttonFill = purple;
  }//End Hover-Over
  fill(buttonFill); //2-colours to start, remember that nightMode adds choice
  if (rect1ON==true)rect(nextButtonX1, nextButtonY1, nextButtonWidth1,nextButtonHeight1);
  fill(resetButtonColour);
  //
   //Hover-over
  if ( mouseX>nextButtonX2 && mouseX<nextButtonX2+nextButtonWidth2 && mouseY>nextButtonY2 && mouseY<nextButtonY2+nextButtonHeight2) {
    buttonFill = red;
  } else {
    buttonFill = purple;
  }//End Hover-Over
  fill(buttonFill); //2-colours to start, remember that nightMode adds choice
  if (rect2ON==true)rect(nextButtonX2, nextButtonY2, nextButtonWidth2, nextButtonHeight2);
  fill(resetButtonColour);
  //
  //Repeating CONSOLE values illustrating mouseX and mouseY related to a formula, mouse buttons
  //println("X-Value", quitButtonX, "\t", mouseX, "\t", quitButtonX+quitButtonWidth, "\t\t Look at the middle value");
  //println("Y-Value", quitButtonY, "\t", mouseY, "\t", quitButtonY+quitButtonHeight, "\t\t Look at the middle value");
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  if ( mouseX>startButtonX && mouseX<startButtonX+startButtonWidth && mouseY>startButtonY && mouseY<startButtonY+startButtonHeight ) {
    if (rect1ON==true) {
      rect1ON=false;
    } else {
      rect1ON=true;
    }
  }
  //
  println(rect1ON);
  println(mouseX,startButtonX,mouseY, startButtonY);
  //
  if ( mouseX>nextButtonX1 && mouseX<nextButtonX1 +nextButtonWidth1 && mouseY>nextButtonY1 && mouseY<nextButtonY1+nextButtonHeight1 ) {
    if (rect2ON==true) {
      rect2ON=false;
    } else {
      rect2ON=true;
    }
  }
  // 
  if ( mouseX>nextButtonX2 && mouseX<nextButtonX2 +nextButtonWidth2 && mouseY>nextButtonY2 && mouseY<nextButtonY2+nextButtonHeight2 ) {
    if (rect3ON==true) {
      rect3ON=false;
    } else {
      rect3ON=true;
    }
  }
}//End mousePressed
//
//End Main Program
