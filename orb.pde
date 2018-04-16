class orb {

  PImage planet;
  float speed;
  float strecke;
  float durchmesser;

  orb zentralKoerper;
  float zentralXPos;
  float zentralYPos;
  float zentralRadius;
  
  float xPos;
  float yPos;

  //Constructor for sun
  orb(float x, float y, float d, String i){
    xPos = scale*x;
    yPos = scale*y;
    durchmesser = d;

    planet = loadImage("textures/"+i);
  }

  //Constructor for Planets, Moons
  orb(orb zK, float zR, float d, float v, String i){
    zentralKoerper = zK;
    zentralRadius = zR;

    durchmesser = d;
    speed = v;

    planet = loadImage("textures/"+i);
    println("textures/"+i);
  }

  void mousePos(int x, int y){
    xPos = x;
    yPos = y;
  }

  void render(){
    image(planet, xPos-(durchmesser*scale)/2, yPos-(durchmesser*scale)/2, durchmesser*scale, durchmesser*scale);
    /* ellipse(xPos, yPos, durchmesser*scale, durchmesser*scale); */
  }

  void move(){
    zentralXPos = zentralKoerper.xPos;
    zentralYPos = zentralKoerper.yPos;

    strecke = speed * 0.001*millis();
    xPos = zentralXPos + (scale*zentralRadius) * cos(strecke);
    yPos = zentralYPos + (scale*zentralRadius) * sin(strecke);
  }
}
