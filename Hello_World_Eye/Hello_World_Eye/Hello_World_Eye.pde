//Global Variables
int appWidth, appHeight;
float centerX, centerY, xStart, yStart, widthRect, heightRect, widthEllipse, heightEllipse,  widthPupil, heightPupil;
color blackNightMode=#000000, yellow=#F9E8CB, black=#000000, white=#FFFFFF, blue=#A3ECF7;
color yellowNightMode=#F9E8CB;//Hexidecimal
float thin, normal, thick;
Boolean grayScale=false, backgroundColour=false, nightMode=false;
//
void setup() {
  //Declaring Display Geometry: landscape, square, portrait
  size(1000, 600); //Able to deploy with fullScreen();
  //fullScreen();
  appWidth = width;
  appHeight = height;
  //Concatenation: , or + (i.e space)
  println("\t\t\tWidth="+width, "\tHeight="+height);
  println("Display Monitor:", "\twidth:"+displayWidth, "\theight:"+displayHeight);
  //
  String ls="Landscape or Square", p="portrait", DO="Display Orientation", instruct="Bru, turn your phun";
  //
  if ( appWidth < appHeight ) { //Declaring Landscape & square
    println(instruct);
  } else {
    println("Display: Good to Go");
    if ( appWidth > displayWidth ) { //Fitting CANVAS into Monitor Display
      appWidth=0;
      appHeight=0;
      println("STOP, is broken");
    } else {
      //Empty ELSE
    }
  }
  //Population
  centerX = appWidth * 1/2;
  centerY = height * 1/2;
  xStart = centerX - ( appWidth * 1/4 );
  yStart  = centerY - ( height * 1/4 );
  widthEllipse = appWidth * 1/2;
  heightEllipse = height * 1/2;
  widthPupil = appWidth * 1/5;
  heightPupil = height * 1/2.2;
  thin = appWidth / appWidth; //1
  normal = appWidth * 1/70;
  thick = appWidth * 1/35;
} //End setup
//
void draw() {
  // New Background Function "covers" old gray scale background()
  // Night Mode means background cannot have blue // change randome for night mode, hard code "0"
  if ( grayScale == true ) background(100); //Gray Scale (0-255) & Blue Issue for night mode
  //
  //Casting Reminder
  if ( backgroundColour == true ){ background( color( random(0 , 255), random(0 , 255), random(0 , 255) ) );
  }
  if ( nightMode == true )
  {
    background( blackNightMode ); 
    fill( yellowNightMode ); 
  } else {
   stroke( yellow ); 
  fill( white ); 
}
strokeWeight( thick );
 ellipse(centerX, centerY, widthEllipse, heightEllipse);
 if ( nightMode == true )
  {
   stroke( yellowNightMode );
 fill( yellowNightMode );
 heightPupil=height * 1/5;
  } else { stroke( blue );
  heightPupil=height * 1/2.2;
 strokeWeight(15);
 fill( black );
}
ellipse(centerX, centerY, widthPupil, heightPupil);  
  fill( white ); //default reset
  stroke( blackNightMode ); //default reset
  strokeWeight(1); //default reset
} //End draw
//
void keyPressed() {
  grayScale = false;
  backgroundColour = false;
  if ( key == 'G' || key == 'g' ) grayScale = true;
  if ( key == 'B' || key == 'b' ) backgroundColour = true;
} //End keyPressed
void mousePressed() {
  if ( mouseButton == LEFT ) nightMode = true;
  if ( mouseButton == RIGHT ) nightMode = false;
} //End mousePressed

//
// End Main Program
