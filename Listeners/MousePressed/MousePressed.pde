//Global variables
Boolean nightMode=false, ahh=false;
//
void setup() {}//End setup
//
void draw() {
 if ( nightMode == true ) println("I am nocturnal!");
 if ( nightMode == false) println("");
 if ( ahh == true) println("Where is that mouse-wheel button");
}//End draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {
 if ( mouseButton == LEFT ) nightMode=true;
 if ( mouseButton == RIGHT ) nightMode=false;
 if ( mouseButton == CENTER) {
   ahh = true;
 } else {
   ahh = false;
}}
//End MousePressed//
//
//End main program
