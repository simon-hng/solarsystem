PVector location, magnitude;

class orb {
  float gravConst = 6.674*pow(10, -11);

  PImage image;
  float force;
  float accel;
  float velos;

  float durchmesser;
  float timeForOrbit;
  float mass;

  orb zentralKoerper;
  float startXPos;
  float startYPos;

  float zentralRadius;
  float zentralMass;
  
  float xCenter;
  float yCenter;
  float xPos;
  float yPos;

  //Constructor for sun
  orb(float x, float y, float d, float m, String i){
    xPos = x;
    yPos = y;
    durchmesser = d;
    mass = m;

    image = loadImage("textures/"+i);
  }

  //Constructor for Planets, Moons
  orb(orb zK, float zR, float d, float m, String i){
    zentralKoerper = zK;
    zentralRadius = zR;

    durchmesser = d;
    mass = m;
    image = loadImage("textures/"+i);
  }

  void render(){
    image(image, xPos-(durchmesser)/2, yPos-(durchmesser)/2, durchmesser, durchmesser);
  }

  void init(){
    xPos = zentralKoerper.xPos+zentralRadius-durchmesser/2;
    yPos = zentralKoerper.yPos;
  }

  void force(){
    zentralMass = zentralKoerper.mass;

    location = new PVector(xPos-zentralKoerper.xPos, yPos-zentralKoerper.yPos);

    force = 0.005*(mass*zentralMass)/sq(location.mag());
    println(force);
    accel = force/mass;
    velos = accel*millis();


    magnitude = new PVector(xPos-zentralKoerper.xPos, yPos-zentralKoerper.yPos);
    magnitude.setMag(velos*millis());
    magnitude.normalize();

    xPos = xPos-magnitude.x;
    yPos = yPos-magnitude.y;
  }
}
