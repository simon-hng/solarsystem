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

float time;
planet Sonne = new planet(50,0,0);//Durchmesser, speed, Zentralradius
planet Erde = new planet(20,11,100);
planet Mond = new planet(10,15,25);
planet Mars = new planet(20,15,50);

public void setup() {
  background(0);
  
  frameRate(100);
}

public void draw() {
  background(0);
  time = time + 0.001f;

  Sonne.bewegung();
  Sonne.render();

  Mars.bewegung();
  Mars.render();

  Erde.bewegung();
  Erde.render();
    Mond.zentralXPos = Erde.xPos;
    Mond.zentralYPos = Erde.yPos;
    Mond.bewegung();
    Mond.render();
}
class planet {
  int farbe;
  float speed;
  float strecke;
  float durchmesser;

  float zentralXPos;
  float zentralYPos;
  float zentralRadius;
  float xPos;
  float yPos;

  planet(float d, float g , float zR ){
    farbe = 0xffFFFFFF;
    zentralXPos = 250;
    zentralYPos = 250;

    durchmesser = d;
    speed = g;
    zentralRadius = zR;
  }

  public void render(){
    ellipse(xPos, yPos, durchmesser, durchmesser);
    fill(farbe);
  }

  public void bewegung(){
    strecke = speed * time;
    xPos = zentralXPos + zentralRadius * cos(strecke);
    yPos = zentralYPos + zentralRadius * sin(strecke);
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
