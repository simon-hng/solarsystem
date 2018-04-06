float time;
orb Sonne = new orb(250,250,50);//xPos, yPos, Durchmesser
orb Erde = new orb(Sonne, 100, 20,11);//zentralKoerper, zentralRadius,durchmesser, geschwindigkeit
orb Mond = new orb(Erde, 25, 10,15);

void setup() {
  background(0);
  size(500, 500);
  frameRate(100);
}

void draw() {
  background(0);
  time = time + 0.001;

  Sonne.render();

  Erde.bewegung();
  Erde.render();

  Mond.bewegung();
  Mond.render();
}
