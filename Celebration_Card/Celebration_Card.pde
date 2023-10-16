 //Program Notes
//Gobal Variables
int appWidth, appHeight;
String title="wwwwwww";
color teal=#9AEAD7, resetDefaultInk=#FFFFFF;
float xRectBackground, yRectBackground, widthRectBackground, heightRectBackground;
float xRectQuit, yRectQuit, widthRectQuit, heightRectQuit;
int sizeFont, size;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage picBackground;
Boolean nightmode=false; //Note: clock and turn on automatically
Boolean brightnessControl=false; //Note: ARROWS
int brightnessNumber=184; //Range:1-255
//Text Variables
//String ; //ALL text variables as name=value pairs
//PFont ; //ALL fonts used
//color ; //colour palette & inks
//
void setup() {
  //Print & Println
  println("wwwwwww");
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
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth*0;
  backgroundImageHeight = appHeight*0;
  //
  //DIVS
  //rect(backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
  rect(xRectBackground, yRectBackground, widthRectBackground, heightRectBackground);
  rect(xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
  rect(xTitle, yTitle, widthTitle, heightTitle); //'wwwwwww'
  //rect(); //Image, foreground, near the top
  //rect(); //Copy & Paste this for all rect()s
  //rect(); //
  //
  // Text Setup
  // Fonts from OS (Operating System)
  String[] fontList = PFont.list(); //Lists all fonts available on OS
  printArray(fontList);
  titleFont = createFont("HighTowerText-Italic", 45); 
  // Tools / Create Font / Find Font / Do not press "OK", Known bug
  //
} //End setup
//
void draw() {
 //Drawing Text, copied for each line of text
 fill(teal); //ink
 textAlign( CENTER, CENTER ); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  size = 35; //integer number
  textFont( Titlefont , size ); //states which font to use
  text( xTitle, yTitle, widthTitle, heightTitle );
  background(184); //built in BUG, 1 pixel
  //
  if ( brightnessControl==true ) tint (184, brightnessNumber);
  { //Gray Scale: 1/2 tint (i.e 128/256=1/2)
  if ( brightnessNumber<1 ) {
    brightnessNumber=1;
  } else if ( brightnessNumber>255 ) {
    brightnessNumber=255;
  } else {
    //Empty ELSE
  }
   tint (255, brightnessNumber);
   println(brightnessNumber);
   //if ( nightmode==true ) tint ( 64, 64, 40 ); //Gray Scale: 1/2 tint (i.e 128/256=1/2)
  if ( nightmode==true ) {
    tint ( 64, 64, 40 );
    println(nightmode);
  } else {
    noTint(); //See Processing DOC
    println(nightmode);
  }
  image( picBackground, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  //
} //End draw
//
void keyPressed() {
if ( key=='n' || key=='N' ) { //Nightmode, basic control is Boolean
    if ( nightmode==true ) {
      nightmode = false;
    } else {
      nightmode = true;
    }
  }
  //Brightness: ARROWS activate brightnessControl, never off
  //NOTE: Nightmode does turn off
  if ( key==CODED && keyCode==UP || keyCode==DOWN ); { //Brightness keybind
    brightnessControl = true;
    if ( key==CODED && keyCode==UP ) brightnessNumber++;
    if ( key==CODED && keyCode==DOWN ) brightnessNumber--;
    //CONTINUE HERE with brightness toggles
   }
   println(brightnessNumber);
    //
  } //End keyPressed
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
