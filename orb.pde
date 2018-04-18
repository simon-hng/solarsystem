class orb {
  float gravConst = 6.674*pow(10, -11);

  PImage planet;
  float strecke;
  float durchmesser;
  float timeForOrbit;
  float mass;

  orb zentralKoerper;
  float zentralXPos;
  float zentralYPos;
  float zentralRadius;
  float zentralMass;
  
  float xPos;
  float yPos;

  //Constructor for sun
  orb(float x, float y, float d, float m, String i){
    xPos = scale*x;
    yPos = scale*y;
    durchmesser = d;
    mass = m;

    planet = loadImage("textures/"+i);
  }

  //Constructor for Planets, Moons
  orb(orb zK, float zR, float d, float m, String i){
    zentralKoerper = zK;
    zentralRadius = zR;

    durchmesser = d;
    mass = m;
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
    zentralMass = zentralKoerper.mass;

    timeForOrbit =  sqrt((pow(2*PI, 2) * pow(zentralRadius, 3))/gravConst*zentralMass);

    strecke = (pow(10, 9)/timeForOrbit) * 0.001*millis();
    xPos = zentralXPos + (scale*zentralRadius) * cos(strecke);
    yPos = zentralYPos + (scale*zentralRadius) * sin(strecke);
  }
}
