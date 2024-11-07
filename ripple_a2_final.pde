int smileyFaceX = 300, smileyFaceY = 250; // this sets up the position of the smiley face button (Processing, n.d) [Integer tutorial]
int angryFaceX = 500, angryFaceY = 250; // this sets up the position of the angry face button (Processing, n.d) [Integer tutorial]
int sadFaceX = 700, sadFaceY = 250; // this sets up the position of the sad face button (Processing, n.d) [Integer tutorial]
int homeButtonX = 750, homeButtonY = 50; // // this sets up the position of the home button (Processing, n.d) [Integer tutorial]
int faceSize = 100; // this sets up the size of the circle (Processing, n.d) [Integer tutorial]
int homeButtonSize = 80; // this sets up the size of the button (Processing, n.d) [Integer tutorial]

color smileyFaceColor = color(228, 250, 3); // this sets the colour of the smile face button (Shiffman, n.d) [Processing tutorial on color], (Processing Cheat Sheet, 2019, 'Variables Types' section)
color angryFaceColor = color(255, 0, 0); // this sets the colour of the smile face button (Shiffman, n.d) [Processing tutorial on color], (Processing Cheat Sheet, 2019, 'Variables Types' section)
color sadFaceColor = color(160, 160, 160); // this sets the colour of the smile face button (Shiffman, n.d) [Processing tutorial on color], (Processing Cheat Sheet, 2019, 'Variables Types' section)
color homeButtonColor = color(100, 100, 255); // this sets the colour of the smile face button (Shiffman, n.d) [Processing tutorial on color], (Processing Cheat Sheet, 2019, 'Variables Types' section)

color currentBackgroundColor; // sets up the variable of current background colour (Processing Cheat Sheet, 2019, 'Variable types' section)
boolean smileyFaceButton = false, angryFaceButton = false, sadFaceButton = false, homeFaceButton = false; // this sets a boolean for all the buttons (Processing, n.d) [Boolean tutorial]
boolean showYellowRipple = false, showRedRipple = false, showGreyRipple = false; // this sets a boolean for all the ripple animations (Processing, n.d) [Boolean tutorial]

void setup() { // sets up the code and runs once (Processing Cheat Sheet, 2019, 'Basic structure' section)
  size(900, 900); // this sets up the size of the screen (Processing Cheat Sheet, 2019, 'Basic functions' section)
  currentBackgroundColor = color(149, 148, 148); // this sets the background colour (Processing Cheat Sheet, 2019, 'Color handling' section)
  ellipseMode(CENTER); // it interprets ellipse as the shape's centre point (Processing, n.d) [ellipseMode() Tutorial]

}

void draw() { // runs the contents repeatedly (Processing Cheat Sheet, 2019, 'Basic functions' section)
  background(currentBackgroundColor); // sets the background to be the same as the variable (Processing, n.d) [Background tutorial and Variables tutorial]  
  update(mouseX, mouseY); // this tracks the position of the mouse considering the locations of all the buttons (Processing, n.d) [Button tutorial]
  
  text("Ripple; The visualisation of your emotions", 500, 100); // this inserts text on the screen (Processing Cheat Sheet, 2019, 'Text functions' section)
  text("Please press a button", 500, 150); // this inserts text on the screen (Processing Cheat Sheet, 2019, 'Text Functions' section)
 

  if (showYellowRipple) { // provides display if the yellow ripple needs to be displayed (Processing, n.d) [else, if, Conditionals 1 Tutorial]
    displayRipple(color(195, 12, 237), color(236, 240, 68)); // a conditional statement that depicts the colour of the ripple animation and the background that should be displayed for the yellow ripple animation (Processing, n.d) [else, if, Conditionals 1 Tutorial]
  } else if (showRedRipple) { // provides the alternative if the red ripple needs to be displayed (Processing, n.d) [else, if, Conditionals 1 Tutorial]
    displayRipple(color(0), color(250, 15, 15)); // a conditional statement that depicts the colour of the ripple animation and the background that should be displayed for the red ripple animation (Processing, n.d) [else, if, Conditionals 1 Tutorial]
  } else if (showGreyRipple) { // provides the alternative if the grey ripple needs to be displayed (Processing, n.d) [else, if, Conditionals 1 Tutorial]
    displayRipple(color(128, 128, 128), color(160, 160, 160)); // a conditional statement that depicts the colour of the ripple animation and the background that should be displayed for the grey ripple animation (Processing, n.d) [else, if, Conditionals 1 Tutorial]
  } else { // provides the other options if the above are not relevant  (Processing, n.d) [else, if, Conditionals 1 Tutorial]
    drawFaceButton(smileyFaceX, smileyFaceY, smileyFaceColor, "happy", smileyFaceButton); // a conditional statement that directs the code to print the smiley face button if none of the options above are chosen (Processing, n.d) [else, if, Conditionals 1 Tutorial]
    drawFaceButton(angryFaceX, angryFaceY, angryFaceColor, "angry", angryFaceButton); // a conditional statement that directs the code to print the angry face button if none of the options above are chosen (Processing, n.d) [else, if, Conditionals 1 Tutorial]
    drawFaceButton(sadFaceX, sadFaceY, sadFaceColor, "sad", sadFaceButton); // a conditional statement that directs the code to print the sad face button if none of the options above are chosen (Processing, n.d) [else, if, Conditionals 1 Tutorial]
  }

  drawHomeButton(homeButtonX, homeButtonY, homeButtonColor, homeFaceButton); // directs the code to print the home button regardless of whether the options above are chosen (Processing, n.d) [else, if, Conditionals 1 Tutorial]
}

void update(int x, int y) { // this function checks whether the mouse is hovering over any of the established buttons (Processing, n.d) [Button tutorial]
  smileyFaceButton = overCircle(smileyFaceX, smileyFaceY, faceSize); // this checks if the mouse is hovering over the smiley face button, and if so overCircle and smileyFaceButton returns true (Processing, n.d) [Button tutorial]
  angryFaceButton = overCircle(angryFaceX, angryFaceY, faceSize); // this checks if the mouse is hovering over the angry face button, and if so overCircle and angryFaceButton returns true (Processing, n.d) [Button tutorial]
  sadFaceButton = overCircle(sadFaceX, sadFaceY, faceSize); // this checks if the mouse is hovering over the sad face button, and if so overCircle and sadFaceButton returns true (Processing, n.d) [Button tutorial]
  homeFaceButton = overCircle(homeButtonX, homeButtonY, homeButtonSize); // this checks if the mouse is hovering over the home button, and if so overCircle and homeButton returns true (Processing, n.d) [Button tutorial]
}

void mousePressed() { // this function helps determine what is displayed depending on the button pressed (Meyers, 2022, p. 80-81), (Processing, n.d) [mousePressed() tutorial]
  if (smileyFaceButton) { // provides the display if the smiley face button is pressed on (Processing, n.d)[else, if, Conditionals 1 Tutorial]
    showYellowRipple = true; // a conditional statement which states that if a smiley face button is pressed the yellow ripple should be depicted (Processing, n.d)[else, if, Conditionals 1 Tutorial]
    showRedRipple = showGreyRipple = false; // sets these boolean values as false since they do not apply in this instance (Processing, n.d) [else, if, Conditionals 1 Tutorial]
  } else if (angryFaceButton) { // provides the display if the angry face button is pressed on (Processing, n.d)[else, if, Conditionals 1 Tutorial]
    showRedRipple = true; // a conditional statement which states that if an angry face button is pressed the red ripple should be depicted (Processing, n.d) [else, if, Conditionals 1 Tutorial]
    showYellowRipple = showGreyRipple = false; // sets these boolean values as false since they do not apply in this instance (Processing, n.d) [else, if, Conditionals 1 Tutorial]
  } else if (sadFaceButton) { // provides the display if the sad face button is pressed on (Processing, n.d)[else, if, Conditionals 1 Tutorial]
    showGreyRipple = true; // a conditional statement which states that if a sad face button is pressed the grey ripple should be depicted (Processing, n.d) [else, if, Conditionals 1 Tutorial]
    showYellowRipple = showRedRipple = false; // sets these boolean values as false since they do not apply in this instance (Processing, n.d) [else, if, Conditionals 1 Tutorial]
  } else if (homeFaceButton) { // provides the display if the home button is pressed on (Processing, n.d)[else, if, Conditionals 1 Tutorial]
    showYellowRipple = showRedRipple = showGreyRipple = false; // sets these boolean values as false since they do not apply in this instance (Processing, n.d) [else, if, Conditionals 1 Tutorial]
    currentBackgroundColor = color(179, 188, 186); // re sets current background colour(Processing Cheat Sheet, 2019, 'Color handling' section)
  }
}

void displayRipple(color bgColor, color lineColor) { // this function sets out the code for the ripple animation (Smith, 2020)
  background(bgColor); // sets the background colour (thedotisblack, 2021)

  int numLines = 30; // sets the number of lines to be drawn for the ripple animation (thedotisblack, 2021)
  float lineWidth = height / numLines / 2; // calculates the width of each line so it is even (thedotisblack, 2021)
  float[] lineY = new float[numLines]; // creates an array to store the Y positions of the lines (thedotisblack, 2021)

  for (int n = 0; n < numLines; n++) { //  establishes a for loop which sets n=0 and continuously runs the code so long as n is less than 30 (thedotisblack, 2021)
    lineY[n] = height / numLines * n; // calculates and stores the y-coordinate values of each line so they can be displayed (thedotisblack, 2021)
  }

  for (int n = 0; n < numLines; n++) { // second for loop (thedotisblack, 2021)  
    float alpha = map(lineY[n], 0, height, 0, 255); // draws the ripple lines using the stored values (thedotisblack, 2021)
    stroke(lineColor, alpha); // sets the line colour with transparency depending on its location (thedotisblack, 2021)
    strokeWeight(lineWidth); // sets the thickness of the lines to be the same as its width (thedotisblack, 2021)
    line(0, lineY[n], width, lineY[n]);  // draws a line at each y-coordinate in the values stores in lineY (thedotisblack, 2021)
   
    stroke(#061324); // sets the colour of the  circle (thedotisblack, 2021)
    strokeWeight(height / 3); // sets the thickness of the lines to be 1/3 of there height (Smith, 2020)
    noFill(); // the circle has no interior fill colour (Smith, 2020)
    ellipse(width / 2, height / 2, height + height / 6, height + height / 6); // sets the size of the ellipse that masks the array of horizontal lines created above (thedotisblack, 2021)
  }
}

void drawFaceButton(int x, int y, color faceColor, String faceType, boolean isHovered) { // function draws a face button using its position, facetype and colour (Meyers, 2022, p. 26)
  if (isHovered) { // sets out the actions if a button is hovered over Processing, n.d)[else, if, Conditionals 1 Tutorial]
    fill(lerpColor(faceColor, color(255), 0.5)); // if the button is hovered over the colour of the button slightly lightens (Processing, n.d)[else, if, Conditionals 1 Tutorial], (Processing Cheat Sheet, 2019, 'Color functions' section)
  } else { // sets out the actions if the button is not hovered over Processing, n.d)[else, if, Conditionals 1 Tutorial]
    fill(faceColor); // the colour remains the same Processing, n.d)[else, if, Conditionals 1 Tutorial]
  }
  noStroke(); // removes the border on the ellipse (Processing Cheat Sheet, 2019, 'fill()...' section)
  ellipse(x, y, faceSize, faceSize); // uses the values established above to draw a button (Processing, n.d) [ellipse() tutorial]

  fill(0); // sets the eye colour as black (Processing, n.d) [fill() tutorial]
  ellipse(x - 15, y - 10, 10, 10); // this sets the location of the left eye (Processing, n.d) [ellipse() tutorial],  (Smith, 2020)
  ellipse(x + 15, y - 10, 10, 10); // this sets the location of the right eye (Processing, n.d) [ellipse() tutorial], (Smith, 2020)

  noFill(); // disables the colour (Processing, n.d) [fill() tutorial] 
  stroke(0); // sets the colour to be black (Processing Cheat Sheet, 2019, 'fill()...' section)
  strokeWeight(2); // sets the width of the stroke as 2 (Processing, n.d) [strokeWeight() tutorial]
  
 
  if (faceType == "happy") { // a conditional statement that provides the display if the facetype of the button is happy (Processing, n.d)[else, if, Conditionals 1 Tutorial]
    arc(x, y + 10, 40, 20, 0, PI); // if the face type of the button is happy, the arc on the button is a smile (Processing Cheat Sheet, 2019, 'Basic geometry' section)
  } else if (faceType == "angry") { // a conditional statement that provides the display if the facetype of the button is angry (Processing, n.d)[else, if, Conditionals 1 Tutorial]
    arc(x, y + 30, 40, 20, PI, TWO_PI); // if the face type of the button is angry, the arc on the button is a frown (Processing Cheat Sheet, 2019, 'Basic geometry' section)
  } else if (faceType == "sad") { // a conditional statement that provides the display if the facetype of the button is sad (Processing, n.d)[else, if, Conditionals 1 Tutorial]
    arc(x, y + 30, 40, 20, PI, TWO_PI); // if the face type of the button is sad, the arc on the button is a frown (Processing Cheat Sheet, 2019, 'Basic geometry' section)
  }
}

void drawHomeButton(int x, int y, color buttonColor, boolean isHovered) { // function draws a face button using its position, facetype and colour (Meyers, 2022, p. 26)
  fill(isHovered ? lerpColor(buttonColor, color(255), 0.5) : buttonColor); // if isHovered is true (boolean) the button colour is lightened, if isHovered is false the button colour remains the same (Processing, n.d) [Boolean tutorial], (Processing Cheat Sheet, 2019, 'Color functions' section)
  noStroke(); // removes the border on the ellipse (Processing Cheat Sheet, 2019, 'fill()...' section)
  rectMode(CENTER); // it "interprets the first two parameters as the upper left corner of the shape, and the thrid and fourth parameters as its width and height" as the shape's centre point (Processing, n.d, para. 2) [rectMode() Tutorial]
  rect(x, y, homeButtonSize, homeButtonSize / 2); // uses the values established above to draw a button (Processing Cheat Sheet, 2019, 'Basic geometry' section)

  fill(255); // sets the colour (Processing, n.d) [fill() tutorial]
  textAlign(CENTER, CENTER); // aligns the text to be centered horizontally and vertically (Processing Cheat Sheet, 2019, 'fill()...' section), (Processing, n.d) [textAlign() Tutorial]
  textSize(16); // sets the size of the text (Processing, n.d) [textSize() Tutorial]
  text("Home", x, y); // this inserts text on the screen (Processing Cheat Sheet, 2019, 'Text functions' section)
}

boolean overCircle(int x, int y, int diameter) { // this function checks if the mouse is hovering over an area on the screen (Processing, n.d) [Button Tutorial]
  float disX = x - mouseX; // calculates the horizontal distance of the mouse and the center of the circle (Processing, n.d) [Button Tutorial]
  float disY = y - mouseY; //  calculates the vertical distance of the mouse and the center of the circle (Processing, n.d) [Button Tutorial]
  return sqrt(sq(disX) + sq(disY)) < diameter / 2; // calculates the straight distance, if this value is true then that means the mouse is inside the circle (Processing, n.d) [Button Tutorial]
}
