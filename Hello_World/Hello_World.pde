//Global Variables
int appWidth, appHeight;
//Declaring display geometry: landscape, square, portrait
size(700, 400);//Able to deploy with fullScreen();
appWidth = width;
appHeight = height;
//
//Concatenation: , or +(i.e space)
println("\t\t\tWidth="+width,"\tHeight="+height);
println("Display Monitor:","\twidth:"+displayWidth,"\theight:"+displayHeight);
//
//Fitting CANVAS into monitor display
if (appWidth > displayWidth) appWidth=0;//CANVAS-width will not fit
if (appHeight > displayHeight) appHeight=0;//CANVAS-width will not fit
//
//Outputting instructions to user when errors with above
//
if(appWidth==0 || appHeight==0) println("STOP, is broken");// || means OR
if(appWidth!=0 && appHeight!=0) println("Display: Good to go");// && means AND
//Bru, turn your phum
String ls="landscape or Square", p="portrait", DO="Display Orientation", instruct="Bruh, turn your phone"
String orientation=( appWidth > appHeight) ? ls : p ;
println(DO, orientation);
if(orientation == p) print(instruct);// Later, output to CANVAS
//
