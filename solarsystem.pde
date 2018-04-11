float time;
orb Sonne = new orb(450,450,50);//xPos, yPos, Durchmesser
orb Erde = new orb(Sonne, 200, 20, 0.1);//zentralKoerper, zentralRadius,durchmesser, geschwindigkeit

void setup() {
  background(0);
  size(900, 900, P3D);
  smooth();
  frameRate(100);
}

void draw() {
  background(0);
  lights();
  time = time + 0.001;

  Sonne.render();

  Erde.move();
}
