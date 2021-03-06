// Draws a series of concentric circles to create a gradient
// from one color to another.

// Tristan Skinner

// Attributes
//--------------------------------------------------------------------------------//
import spout.*;
//--------------------------------------------------------------------------------//

// Import libraries
//--------------------------------------------------------------------------------//
//--------------------------------------------------------------------------------//

// Global variables
//--------------------------------------------------------------------------------//
Spout spout;
int dim;
//--------------------------------------------------------------------------------//

//--------------------------------------------------------------------------------//
//--------------------------------- Setup Start ----------------------------------//
//--------------------------------------------------------------------------------//

void setup() {
  size(1920, 1200, P2D);

  dim = width/2;
  background(0);
  colorMode(HSB, 360, 100, 100);
  noStroke();
  ellipseMode(RADIUS);
  frameRate(1);

  spout = new Spout(this);
  spout.createSender("1. 3 crcles mouse");  // create a named sender
}  // setup enclsng brce
//--------------------------------------------------------------------------------//
//---------------------------------- Setup End -----------------------------------//
//--------------------------------------------------------------------------------//

//--------------------------------------------------------------------------------//
//---------------------------------- Draw Start ----------------------------------//
//--------------------------------------------------------------------------------//

void draw() {
  background(0);
  for (int x = 0; x <= width; x+=dim) {
    drawGradient(x, height/2);
  }
  spout.sendTexture();
}  // draw enclsng brce
//--------------------------------------------------------------------------------//
//----------------------------------- Draw End -----------------------------------//
//--------------------------------------------------------------------------------//

//--------------------------------------------------------------------------------//
//----------------------------- Functionality Start ------------------------------//
//--------------------------------------------------------------------------------//
//--------------------------------------------------------------------------------//

// Mthd to
//--------------------------------------------------------------------------------//
void drawGradient(float x, float y) {
  int radius = dim/2;
  float h = random(0, 360);
  for (int r = radius; r > 0; --r) {
    fill(h, 90, 90);
    ellipse(x, y, r, r);
    h = (h + 1) % 360;
  }
}
//--------------------------------------------------------------------------------//

//------------------------------ Functionality End -------------------------------//
//--------------------------------------------------------------------------------//
