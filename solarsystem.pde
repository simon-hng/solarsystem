float time;
orb Sonne = new orb(250,250,50);//xPos, yPos, Durchmesser
orb Erde = new orb(Sonne, 100, 20, 0.0011);//zentralKoerper, zentralRadius,durchmesser, geschwindigkeit
orb Mond = new orb(Erde, 150, 10, 0.0015);

void setup() {
  background(0);
  size(500, 500, P3D);
  smooth();
  frameRate(100);
}

void draw() {
  background(0);
  lights();
  time = time + 0.001;

  Sonne.render();

  Mond.move();

}
