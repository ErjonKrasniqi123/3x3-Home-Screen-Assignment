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
float nextButtonX3, nextButtonY3, nextButtonWidth3, nextButtonHeight3;
float nextButtonX4, nextButtonY4, nextButtonWidth4, nextButtonHeight4;
float nextButtonX5, nextButtonY5, nextButtonWidth5, nextButtonHeight5;
String title6 = "By choosing this chocoloate, you are carefree";
float titleX6, titleY6, titleWidth6, titleHeight6;
PFont titleFont6;
Boolean rect4ON=false;
String title7= "By choosing this chocoloate, you are smart and feel proud of yourself";
float titleX7, titleY7, titleWidth7, titleHeight7;
PFont titleFont7;
Boolean rect5ON=false;
String title8= "By choosing this chocoloate, you seek adventures and are a daredevil";
float titleX8, titleY8, titleWidth8, titleHeight8;
PFont titleFont8;
Boolean rect6ON=false;
String title9= "By choosing this chocolate you are self-centered";
float titleX9, titleY9, titleWidth9, titleHeight9;
PFont titleFont9;
Boolean rect7ON=false;
float nextButtonX6, nextButtonY6, nextButtonWidth6, nextButtonHeight6;
String title10= "Stop/ReStart Program";
float titleX10, titleY10, titleWidth10, titleHeight10;
PFont titleFont10;
float nextButtonX7, nextButtonY7, nextButtonWidth7, nextButtonHeight7;
float rectX10, rectY10, rectX11, rectY11, rectX12, rectY12, rectX13, rectY13, rectX14, rectY14, rectX15, rectY15, rectX16, rectY16, rectX17, rectY17, rectX18, rectY18;
Boolean rect8ON=false;
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
  //
  rectX10=width*0;
  rectY10=height*0;
  rectX11=width*1/3;
  rectY11=height*0;
  rectX12=width*2/3;
  rectY12=height*0;
  rectX13=width*0;
  rectY13=height*1/3;
  rectX14=width*1/3;
  rectY14=height*1/3;
  rectX15=width*2/3;
  rectY15=height*1/3;
  rectX16=width*0;
  rectY16=height*2/3;
  rectX17=width*1/3;
  rectY17=height*2/3;
  rectX18=width*2/3;
  rectY18=height*2/3;
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
  quitButtonX=width*1/2.4;
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
   nextButtonX3=width*1/20;
   nextButtonY3=height*1/1.1;
   nextButtonWidth3=width/20;
   nextButtonHeight3=height/20;
   //
   nextButtonX4=width*0.13;
   nextButtonY4=height*1/1.1;
   nextButtonWidth4=width/20;
   nextButtonHeight4=height/20;
   //
   nextButtonX5=width*0.21;
   nextButtonY5=height*1/1.1;
   nextButtonWidth5=width/20;
   nextButtonHeight5=height/20;
   //
   titleX6=width*0.4;
  titleY6=height*0.7;
  titleWidth6=width/5;
  titleHeight6=height/5;
  //
  titleX7=width*0.7;
  titleY7=height*0.7;
  titleWidth7=width/5;
  titleHeight7=height/5;
  //
  titleX8=width*0.7;
  titleY8=height*0.4;
  titleWidth8=width/5;
  titleHeight8=height/5;
  //
   titleX9=width*0.68;
  titleY9=height*0.1;
  titleWidth9=width/5;
  titleHeight9=height/5;
  //
  nextButtonX6=width*1/2.4;
   nextButtonY6=height*1/6;
   nextButtonWidth6=width/20;
   nextButtonHeight6=height/20;
   //
  titleX10=width*0.5;
  titleY10=height*0.14;
  titleWidth10=width/10;
  titleHeight10=height/10;
  //
  nextButtonX7=width*1/3.7;
   nextButtonY7=height*1/1.1;
   nextButtonWidth7=width/20;
   nextButtonHeight7=height/20;
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
  titleFont6 = createFont("Harrington", 25); //Verify the font exists in Processing.JAVA
  titleFont7 = createFont("Harrington", 25); //Verify the font exists in Processing.JAVA
  titleFont8 = createFont("Harrington", 25); //Verify the font exists in Processing.JAVA
  titleFont9 = createFont("Harrington", 25); //Verify the font exists in Processing.JAVA
  titleFont10= createFont("Harrington", 10); //Verify the font exists in Processing.JAVA
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
  if (rect4ON==true)rect( titleX6, titleY6, titleWidth6, titleHeight6);
  if (rect5ON==true)rect( titleX7, titleY7, titleWidth7, titleHeight7);
  if (rect6ON==true)rect( titleX8, titleY8, titleWidth8, titleHeight8);
  if (rect7ON==true)rect( titleX9, titleY9, titleWidth9, titleHeight9);
  rect(titleX10, titleY10, titleWidth10, titleHeight10);
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
   fill(purple); //Ink, hexidecimal copied from Color Selector
  textAlign( CENTER, CENTER); //Align X*Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | Right ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  titleSize = 20; //Change this number until it fits
  if (rect4ON==true)textFont(titleFont6, titleSize);
  if (rect4ON==true)text(title6, titleX6, titleY6, titleWidth6, titleHeight6);
  fill(resetDefaultInk);
  //
  fill(purple); //Ink, hexidecimal copied from Color Selector
  textAlign( CENTER, CENTER); //Align X*Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | Right ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  titleSize = 20; //Change this number until it fits
  if (rect5ON==true)textFont(titleFont7, titleSize);
  if (rect5ON==true)text(title7, titleX7, titleY7, titleWidth7, titleHeight7);
  fill(resetDefaultInk);
  //
  fill(purple); //Ink, hexidecimal copied from Color Selector
  textAlign( CENTER, CENTER); //Align X*Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | Right ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  titleSize = 20; //Change this number until it fits
  if (rect6ON==true)textFont(titleFont8, titleSize);
  if (rect6ON==true)text(title8, titleX8, titleY8, titleWidth8, titleHeight8);
  fill(resetDefaultInk);
  //
  fill(purple); //Ink, hexidecimal copied from Color Selector
  textAlign( CENTER, CENTER); //Align X*Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | Right ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  titleSize = 20; //Change this number until it fits
  if (rect7ON==true)textFont(titleFont9, titleSize);
  if (rect7ON==true)text(title9, titleX9, titleY9, titleWidth9, titleHeight9);
  fill(resetDefaultInk);
  //
  fill(purple); //Ink, hexidecimal copied from Color Selector
  textAlign( CENTER, CENTER); //Align X*Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | Right ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  titleSize = 15; //Change this number until it fits
  textFont(titleFont10, titleSize);
  text(title10, titleX10, titleY10, titleWidth10, titleHeight10);
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
   //Hover-over
  if ( mouseX>nextButtonX3 && mouseX<nextButtonX3+nextButtonWidth3 && mouseY>nextButtonY3 && mouseY<nextButtonY3+nextButtonHeight3) {
    buttonFill = red;
  } else {
    buttonFill = purple;
  }//End Hover-Over
  fill(buttonFill); //2-colours to start, remember that nightMode adds choice
  if (rect3ON==true)rect(nextButtonX3, nextButtonY3, nextButtonWidth3, nextButtonHeight3);
  fill(resetButtonColour);
  //
  //Hover-over
  if ( mouseX>nextButtonX4 && mouseX<nextButtonX4+nextButtonWidth4 && mouseY>nextButtonY4 && mouseY<nextButtonY4+nextButtonHeight4) {
    buttonFill = red;
  } else {
    buttonFill = purple;
  }//End Hover-Over
  fill(buttonFill); //2-colours to start, remember that nightMode adds choice
  if (rect3ON==true)rect(nextButtonX4, nextButtonY4, nextButtonWidth4, nextButtonHeight4);
  fill(resetButtonColour);
  //
  //Hover-over
  if ( mouseX>nextButtonX5 && mouseX<nextButtonX5+nextButtonWidth5 && mouseY>nextButtonY5 && mouseY<nextButtonY5+nextButtonHeight5) {
    buttonFill = red;
  } else {
    buttonFill = purple;
  }//End Hover-Over
  fill(buttonFill); //2-colours to start, remember that nightMode adds choice
  if (rect3ON==true)rect(nextButtonX5, nextButtonY5, nextButtonWidth5, nextButtonHeight5);
  fill(resetButtonColour);
  //
   //Hover-over
  if ( mouseX> nextButtonX6 && mouseX<nextButtonX6+nextButtonWidth6 && mouseY>nextButtonY6 && mouseY<nextButtonY6+nextButtonHeight6) {
    buttonFill = red;
  } else {
    buttonFill = purple;
  }//End Hover-Over
  fill(buttonFill); //2-colours to start, remember that nightMode adds choice
  rect(nextButtonX6, nextButtonY6, nextButtonWidth6,nextButtonHeight6);
  fill(resetButtonColour);
  //
   //Hover-over
  if ( mouseX> nextButtonX7 && mouseX<nextButtonX7+nextButtonWidth7 && mouseY>nextButtonY7 && mouseY<nextButtonY7+nextButtonHeight7) {
    buttonFill = red;
  } else {
    buttonFill = purple;
  }//End Hover-Over
  fill(buttonFill); //2-colours to start, remember that nightMode adds choice
  if (rect3ON==true)rect(nextButtonX7, nextButtonY7, nextButtonWidth7,nextButtonHeight7);
  fill(resetButtonColour);
  //
  //Repeating CONSOLE values illustrating mouseX and mouseY related to a formula, mouse buttons
  //println("X-Value", quitButtonX, "\t", mouseX, "\t", quitButtonX+quitButtonWidth, "\t\t Look at the middle value");
  //println("Y-Value", quitButtonY, "\t", mouseY, "\t", quitButtonY+quitButtonHeight, "\t\t Look at the middle value");
  //
  if (rect8ON==true)rect(rectX10, rectY10, rectWidth, rectHeight);
  if (rect8ON==true)rect(rectX12, rectY12, rectWidth, rectHeight);
  if (rect8ON==true)rect(rectX13, rectY13, rectWidth, rectHeight);
  if (rect8ON==true)rect(rectX15, rectY15, rectWidth, rectHeight);
  if (rect8ON==true) rect(rectX16, rectY16, rectWidth, rectHeight);
  if (rect8ON==true)rect(rectX17, rectY17, rectWidth, rectHeight);
  if (rect8ON==true)rect(rectX18, rectY18, rectWidth, rectHeight);
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
  if ( mouseX>nextButtonX3 && mouseX<nextButtonX3 +nextButtonWidth3 && mouseY>nextButtonY3 && mouseY<nextButtonY3+nextButtonHeight3 ) {
    if (rect4ON==true) {
      rect4ON=false;
    } else {
      rect4ON=true;
    }
  }
  if ( mouseX>nextButtonX4 && mouseX<nextButtonX4 +nextButtonWidth4 && mouseY>nextButtonY4 && mouseY<nextButtonY4+nextButtonHeight4) {
    if (rect5ON==true) {
      rect5ON=false;
    } else {
      rect5ON=true;
    }
  }
  if ( mouseX>nextButtonX5 && mouseX<nextButtonX5 +nextButtonWidth5 && mouseY>nextButtonY5 && mouseY<nextButtonY5+nextButtonHeight5) {
    if (rect6ON==true) {
      rect6ON=false;
    } else {
      rect6ON=true;
    }
  }
 
   
  if ( mouseX>nextButtonX6 && mouseX<nextButtonX6 +nextButtonWidth6 && mouseY>nextButtonY6 && mouseY<nextButtonY6+nextButtonHeight6){
  if (rect8ON==true) {
      rect8ON=false;
    } else {
      rect8ON=true;
    }
  }//End Reset
  
   if ( mouseX>nextButtonX7 && mouseX<nextButtonX7+nextButtonWidth7 && mouseY>nextButtonY7 && mouseY<nextButtonY7+nextButtonHeight7 ) {
    if (rect7ON==true) {
      rect7ON=false;
    } else {
      rect7ON=true;
    }
  }
}//End mousePressed
//
//End Main Program
