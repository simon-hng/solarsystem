int orbCount = 10;

orb orbs[]  = new orb[orbCount];

float scale = 2.5;
int timeScale = 10;

void setup() {
  background(0);
  size(900, 900);
  frameRate(100);

  //orbs[i] = new orb (orbs[i von zk], zR, d, m, image)
  orbs[0] = new orb (450, 450, 20, 10, "sun.png");              //xPos, yPos, Durchmesser, mass, texture
  orbs[1] = new orb (orbs[0], 58, 5, 1, "mercury.png");     //Mercury: zentralKoerper, zentralRadius,durchmesser, mass, texture
  orbs[2] = new orb (orbs[0], 108, 12, 0.7, "venus.png");    //Venus
  orbs[3] = new orb (orbs[0], 150, 13, 0.6, "earth.png");    //Earth
  orbs[4] = new orb (orbs[3], 20, 1, 0.07, "moon.png");    //Moon
  orbs[5] = new orb (orbs[0], 228, 7, 0.48, "mars.png");     //Mars
  orbs[6] = new orb (orbs[0], 778, 144, 0.26, "jupiter.png");   //Jupiter
  orbs[7] = new orb (orbs[0], 1427, 120, 0.2, "saturn.png");   //Saturn
  orbs[8] = new orb (orbs[0], 2870, 51, 0.14, "uranus.png");   //Uranus
  orbs[9] = new orb (orbs[0], 4497, 50, 0.1, "neptune.png");    //Neptune

  for(int index = 1; index < orbCount; index++){
    orbs[index].init();
  }
}

void draw() {
  noCursor();
  background(0);

  orbs[0].render();

  for(int index = 1; index < orbCount; index++){
    orbs[index].force();
    orbs[index].render();
  }
}