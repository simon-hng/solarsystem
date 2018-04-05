float time;
planet Sonne = new planet(50,0,0);//Durchmesser, speed, Zentralradius
planet Erde = new planet(20,11,100);
planet Mond = new planet(10,15,25);
planet Mars = new planet(20,15,50);

void setup() {
  background(0);
  size(500, 500);
  frameRate(100);
}

void draw() {
  background(0);
  time = time + 0.001;

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
