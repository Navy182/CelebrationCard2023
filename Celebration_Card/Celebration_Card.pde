//Gobal Variables
int appWidth, appHeight;
String title="Happy Birthday";
color teal=#9AEAD7, blue=#0A1376, resetDefaultInk=#FFFFFF;
float xTitle, yTitle, widthTitle, heightTitle;
float xFooter, yFooter, widthFooter, heightFooter;
PFont titleFont, footerFont;
float xRect1, yRect1, widthRect1, heightRect1;
float xRectBackground, yRectBackground, widthRectBackground, heightRectBackground;
float xRect2, yRect2, widthRect2, heightRect2;
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
  //println("Happy Birthday");
  //println("Width:"+width, "\t", "Height:"+height);
  //println("Display Width: "+displayWidth, "\tDisplay Width: "+displayHeight);
  //Character Escapes, tab, new
  //
  //fullScreen();
  size (1000, 800);
  appWidth = width;
  appHeight = height;
  //
  //Population
  xRectQuit = appWidth*0;
  yRectQuit = appHeight*0;
  widthRectQuit = appWidth-1;
  heightRectQuit = appHeight-1;
  xRectQuit = appWidth*1/8;
  yRectQuit = appHeight*1/8;
  widthRectQuit = appWidth*1/10;
  heightRectQuit = appHeight*1/10;
  xRect1 = appWidth*1/2 ;
  yRect1 = appHeight*1/2;
  widthRect1 = appWidth*1/4 ;
  heightRect1 = appHeight*1/4 ;
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth;
  backgroundImageHeight = appHeight;
  String up = "..";
  String open = "/";
  String imagesPath = up + open;
  String LandscapesImage = "Images/Landscapes/";
  String flowerImage = "91240AAC-E013-DB4B-5B2B8C97B5A17616.jpg";
  picBackground = loadImage( imagesPath + LandscapesImage + flowerImage );
  //println(picBackground); //to see if processing is seeing the image
  //
  //DIVS
  rect( xRect1, yRect1, widthRect1, heightRect1 );
  rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
  rect(xRectBackground, yRectBackground, widthRectBackground, heightRectBackground);
  rect(xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
  rect(xTitle, yTitle, widthTitle, heightTitle);
  rect(xFooter, yFooter, widthFooter, heightFooter);
  //rect(); //Image, foreground, near the top
  //rect(); //Copy & Paste this for all rect()s
  //rect(); //
  //
  // Text Setup
  // Fonts from OS (Operating System)
  String[] fontList = PFont.list(); //Lists all fonts available on OS
  printArray(fontList);
  titleFont = createFont("Verdana Bold", 45); 
  // Tools / Create Font / Find Font / Do not press "OK", Known bug
  //
} //End setup
//
void draw() {
 //Drawing Text, copied for each line of text
 //
 fill(teal); //ink
 textAlign( CENTER, CENTER ); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  size = 45; //integer number
  textFont( titleFont , size ); //states which font to use
  text( title, xTitle, yTitle, widthTitle, heightTitle );
  background(184); //built in BUG, 1 pixel
 
  
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
  println("mouse X: ", mouseX, "Mouse Y: ", mouseY);
  //
  rect( xRect2, yRect2, widthRect2, heightRect2 );
  if (mouseX>xRectQuit && mouseX<xRectQuit+widthRectQuit && mouseY>yRectQuit && mouseY<yRectQuit+heightRectQuit) exit();
  //
} // End MousePressed
 
  //End MAIN Program
