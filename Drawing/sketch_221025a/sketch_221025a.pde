//Global Variables
int appWidth, appHeight;
float centerX, centerY, xStart, yStart, widthRect, heightRect;
color yellowNightMode=#F8FC90, purpleNightMode=#FA0096;
float thin, normal, thick;
boolean nightMode=false, randomBackground=false;
void setup() {
  //Declaring display geometry: landscape, square, portrait
size(2000, 400);//Able to deploy with fullScreen();
appWidth = width;
appHeight = height;
//
//Concatenation: , or +(i.e space)
println("\t\t\tWidth="+width,"\tHeight="+height);
println("Display Monitor:","\twidth:"+displayWidth,"\theight:"+displayHeight);
//
String ls="landscape or Square", p="portrait", DO="Display Orientation", instruct="Bruh, turn your phone";
//
if (appWidth < appHeight) { //Declaring Landskape& square
println(instruct);
} else {
println("Display: Good to go");
}
if (appWidth > displayWidth) {//Fitting CANVAS into monitor display
appWidth=0;
appHeight=0;
println("STOP, is broken");
} else {//Empty ELSE
}
//
//
}//End setup
//Population
centerX = width * 1/2;
centerY = height * 1/2;
xStart = centerX - ( width * 1/4);
yStart =  centerY - ( height * 1/4);
widthRect = width * 1/2;
heightRect = height * 1/2;
//
void draw() {
rect(xStart, yStart, widthRect, heightRect);
}
//
void keyPressed() {} //End keyPressed
//
void mousePressed() {}//End mousePressed
//
//end of the program
