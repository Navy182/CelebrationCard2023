//Gobal Variables
int appWidth, appHeight;
float xRectBackground, yRectBackground, widthRectBackground, heightRectBackground;
float xRectQuit, yRectQuit, widthRectQuit, heightRectQuit;
int sizeFont, size; //Text Variables
//String ; //ALL text variables as name=value pairs
//PFont ; //ALL fonts used
//color ; //colour palette & inks
//
void setup() {
  //Print & Println
  println("Hello World");
  println("Width:"+width, "\t", "Height:"+height);
  println("Display Width: "+displayWidth, "\tDisplay Width: "+displayHeight);
  //Character Escapes, tab, new
  //
  //FullScreen();
  size(600, 400);
  appWidth = width;
  appHeight = height;
  //
  //Population
  xRectQuit = appWidth*0;
  yRectQuit = appHeight*0;
  widthRectQuit = appWidth-1;
  heightRectQuit = appHeight-1;
  xRectQuit = appWidth*1/4;
  yRectQuit = appHeight*1/4;
  widthRectQuit = appWidth*1/2;
  heightRectQuit = appHeight*1/2;
  //
  //DIVS
  rect(xRectBackground, yRectBackground, widthRectBackground, heightRectBackground);
  rect(xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
  //rect(); //Image, foreground, near the top
  //rect(); //Copy & Paste this for all rect()s
  //rect(); //
  //rect(); //
  //rect(); //
  //rect(); //
  //rect(); //
  //
  // Text Setup
  // Fonts from OS (Operating System)
  //String[] fontList = PFont.list(); //Lists all fonts available on OS
  //printArray(fontList);
  //[fontName] = createFont("[fontSpelling]", [startingFontSize]); 
  // Tools / Create Font / Find Font / Do not press "OK", Known bug
  //
} //End setup
//
void draw() {
 //Drawing Text, copied for each line of text
 //fill( [ColourName] ); //ink
  textAlign( CENTER, CENTER ); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  //size = [pixelNumberFontSize]; //integer number
  //textFont( [fontVariable], size ); //states which font to use
  //text( [textStringName], [four rect() variables copied from DIVs] );
  //
} //End draw
//
void keyPressed() {
} //End keypress
//
void mousePressed () {
  //When mouse is pressed
  println("mouse X: ", mouseX, "Mouse Y: ", mouseY);
  //
  //xRect2, yRect2, widthRect2, heightRect2
  if (mouseX>xRectQuit && mouseX<xRectQuit+widthRectQuit && mouseY>yRectQuit && mouseY<yRectQuit+heightRectQuit) exit();
  //
} // End MousePressed
 
  //End MAIN Program
