orb orbs[]  = new orb[50];
int orbCount = 10;
float scale = 5;

void setup() {
  background(0);
  size(900, 900);
  surface.setResizable(true);
  frameRate(100);

  orbs[0] = new orb (450, 450, 20, 255, 200, 0);              //xPos, yPos, Durchmesser, R,G,B
  orbs[1] = new orb (orbs[0], 29, 5, 0.96, 130, 100, 70);     //Merkur: zentralKoerper, zentralRadius,durchmesser, geschwindigkeit, R,G,B
  orbs[2] = new orb (orbs[0], 54, 12, 0.7, 240, 200, 115);    //Venus
  orbs[3] = new orb (orbs[0], 75, 13, 0.6, 120, 150, 175);    //Erde
  orbs[4] = new orb (orbs[3], 10, 2, 0.07, 120, 120, 120);    //Mond
  orbs[5] = new orb (orbs[0], 114, 7, 0.48, 250, 70, 60);     //Mars
  orbs[6] = new orb (orbs[0], 389, 144, 0.26, 250, 10, 20);   //Jupiter
  orbs[7] = new orb (orbs[0], 714, 120, 0.2, 250, 200, 10);   //Saturn
  orbs[8] = new orb (orbs[0], 1435, 51, 0.14, 50, 75, 200);   //Uranus
  orbs[9] = new orb (orbs[0], 2249, 50, 0.1, 25, 80, 175);    //Neptun
}

void draw() {
  noCursor();
  background(0);

  orbs[0].render();
  orbs[0].mousePos(mouseX, mouseY);

  
  for(int index = 1; index < orbCount; index++){
    orbs[index].move();
    orbs[index].render();
  }
}

//Function for scaling
void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  if(scale > 0.1){
    scale = scale - e/10;
  } else {
    scale = scale + 0.1;
  }
}