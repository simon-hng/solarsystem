float zeit;
Himmelskoerper Sonne = new Himmelskoerper(50,0,0);//Durchmesser, Geschwindigkeit, Zentralradius
Himmelskoerper Erde = new Himmelskoerper(20,11,100);
Himmelskoerper Mond = new Himmelskoerper(10,15,25);
Himmelskoerper Mars = new Himmelskoerper(20,15,50);

void setup() { 
  background(0);
  size(500, 500);
  frameRate(100);
}

void draw() {
  background(0);
  zeit = zeit + 0.001;

  Sonne.zeichnen();

  Mars.bewegung();

  Erde.bewegung();
    Mond.zentralXPos = Erde.xPos;
    Mond.zentralYPos = Erde.yPos;
    Mond.bewegung();
}
