//Gobal Variables
int appWidth, appHeight;
String title="wwwwwww";
color teal=#9AEAD7, resetDefaultInk=#FFFFFF;
float xTitle, yTitle, widthTitle, heightTitle;
float xFooter, yFooter, widthFooter, heightFooter;
PFont titleFont, footerFont;
float xRectBackground, yRectBackground, widthRectBackground, heightRectBackground;
float xRectQuit, yRectQuit, widthRectQuit, heightRectQuit;
int sizeFont, size;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage picBackground, flowerPortrait;
//Boolean nightmode=false; //Note: clock and turn on automatically
//Boolean brightnessControl=false; //Note: ARROWS
//int brightnessNumber=184; //Range:1-255
//Text Variables
//String ; //ALL text variables as name=value pairs
//PFont ; //ALL fonts used
//color ; //colour palette & inks
//
void setup() {
  //Print & Println
  //println("wwwwwww");
  //println("Width:"+width, "\t", "Height:"+height);
  //println("Display Width: "+displayWidth, "\tDisplay Width: "+displayHeight);
  //Character Escapes, tab, new
  //
  fullScreen();
  appWidth = width;
  appHeight = height;
  //
  //Population
  //xRectQuit = appWidth*0;
  //yRectQuit = appHeight*0;
  //widthRectQuit = appWidth-1;
 // heightRectQuit = appHeight-1;
  //xRectQuit = appWidth*1/4;
  //yRectQuit = appHeight*1/4;
  //widthRectQuit = appWidth*1/2;
  //heightRectQuit = appHeight*1/2;
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth*0;
  backgroundImageHeight = appHeight*0;
  String up = "..";
  String open = "/";
  String imagesPath = up + open;
  String PortraitImage = "../Images/Portrait/";
  String flowerImage = "download.jpg";
  picBackground = loadImage( imagesPath + PortraitImage + flowerImage );
  //
  //DIVS
  rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
  rect(xRectBackground, yRectBackground, widthRectBackground, heightRectBackground);
  rect(xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
  rect(xTitle, yTitle, widthTitle, heightTitle); //'wwwwwww'
  rect(xFooter, yFooter, widthFooter, heightFooter);
  //rect(); //Image, foreground, near the top
  //rect(); //Copy & Paste this for all rect()s
  //rect(); //
  //
  // Text Setup
  // Fonts from OS (Operating System)
  String[] fontList = PFont.list(); //Lists all fonts available on OS
  //printArray(fontList);
  titleFont = createFont("Verdana Bold", 45); 
  // Tools / Create Font / Find Font / Do not press "OK", Known bug
  //
} //End setup
//
void draw() {
 //Drawing Text, copied for each line of text
 //
 //fill(teal); //ink
 textAlign( CENTER, CENTER ); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  size = 10; //integer number
  textFont( titleFont , size ); //states which font to use
  text( title, xTitle, yTitle, widthTitle, heightTitle );
  //background(184); //built in BUG, 1 pixel
 
  
  image( picBackground, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  //
} //End draw
//
void keyPressed() {
    //
  } //End keyPressed
//
void mousePressed () {
  //When mouse is pressed
  //println("mouse X: ", mouseX, "Mouse Y: ", mouseY);
  //
  //xRect2, yRect2, widthRect2, heightRect2
  //if (mouseX>xRectQuit && mouseX<xRectQuit+widthRectQuit && mouseY>yRectQuit && mouseY<yRectQuit+heightRectQuit) exit();
  //
} // End MousePressed
 
  //End MAIN Program
