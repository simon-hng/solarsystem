orb orbs[]  = new orb[50];
int orbCount = 10;
float scale = 5;

void setup() {
  background(0);
  size(900, 900, P3D);
  surface.setResizable(true);
  noCursor();
  smooth();
  frameRate(100);

  orbs[0] = new orb (20, 255, 200, 0);                        //Durchmesser, R,G,B
  orbs[1] = new orb (29, 5, 0.96, 130, 100, 70);     //Merkur: zentralKoerper, zentralRadius,durchmesser, geschwindigkeit, R,G,B
  orbs[2] = new orb (54, 12, 0.7, 240, 200, 115);    //Venus
  orbs[3] = new orb (75, 13, 0.6, 120, 150, 175);    //Erde
  orbs[4] = new orb (10, 2, 0.07, 120, 120, 120);    //Mond
  orbs[5] = new orb (114, 7, 0.48, 250, 70, 60);     //Mars
  orbs[6] = new orb (389, 144, 0.26, 250, 10, 20);   //Jupiter
  orbs[7] = new orb (714, 120, 0.2, 250, 200, 10);   //Saturn
  orbs[8] = new orb (1435, 51, 0.14, 50, 75, 200);   //Uranus
  orbs[9] = new orb (2249, 50, 0.1, 25, 80, 175);    //Neptun
}

void draw() {
  background(0);
  camera(450, 900, 5*(450-mouseY), 450, 450, 0, 0, 0, 1);

  for(int index = 0; index < orbCount; index++){
    orbs[index].render();
  }
}

void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  if(scale > 0.2){
    scale = scale - e/5;
  } else {
    scale = scale + 0.2;
  }
}

  