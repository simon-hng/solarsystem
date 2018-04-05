import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class planetensystem extends PApplet {

float zeit;
Himmelskoerper Sonne = new Himmelskoerper(50,0,0);//Durchmesser, Geschwindigkeit, Zentralradius
Himmelskoerper Erde = new Himmelskoerper(20,11,100);
Himmelskoerper Mond = new Himmelskoerper(10,15,25);
Himmelskoerper Mars = new Himmelskoerper(20,15,50);

public void setup() { 
  background(0);
  
  frameRate(100);
}

public void draw() {
  background(0);
  zeit = zeit + 0.001f;

  Sonne.zeichnen();

  Mars.bewegung();

  Erde.bewegung();
    Mond.zentralXPos = Erde.xPos;
    Mond.zentralYPos = Erde.yPos;
    Mond.bewegung();
}
class Himmelskoerper {
  int farbe;
  float geschwindigkeit;
  float strecke;
  float durchmesser;

  float zentralXPos;
  float zentralYPos;
  float zentralRadius;
  float xPos;
  float yPos;

  Himmelskoerper(float d, float g , float zR ){
    farbe = 0xffFFFFFF;
    zentralXPos = 250;
    zentralYPos = 250;

    durchmesser = d;
    geschwindigkeit = g;
    zentralRadius = zR;
  }

  public void zeichnen(){
    fill(farbe);
    ellipse(zentralXPos, zentralYPos, durchmesser, durchmesser);
  }

  public void bewegung(){
    strecke = geschwindigkeit * zeit;
    xPos = zentralXPos + zentralRadius * cos(strecke);
    yPos = zentralYPos + zentralRadius * sin(strecke);
    fill(farbe);
    ellipse(xPos, yPos, durchmesser, durchmesser);
  }
}
  public void settings() {  size(500, 500); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "planetensystem" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
