//Global Variables
int appWidth, appHeight;
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
//
void draw() {
ellipse(80,100,10,90);
}//End draw
//
void keyPressed() {} //End keyPressed
//
void mousePressed() {}//End mousePressed
//
//end of the program
