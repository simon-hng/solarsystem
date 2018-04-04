int Fenster = 1000;
float zeit;
Himmelskoerper Sonne = new Himmelskoerper();
Himmelskoerper Erde = new Himmelskoerper();
Himmelskoerper Mond = new Himmelskoerper();
Himmelskoerper Mars = new Himmelskoerper();

void setup() { 
  background(0);
  size(Fenster/2, Fenster/2);
  frameRate(100);
  
  Sonne.farbe = #FFFF00;
  Sonne.durchmesser = 50;
  
  Mars.farbe = #ff0000;
  Mars.durchmesser = 20;
  Mars.geschwindigkeit = 11;
  Mars.zentralRadius = 50;
  
  Erde.farbe = #0000FF;
  Erde.durchmesser = 25;
  Erde.geschwindigkeit = 10;
  Erde.zentralRadius = 100;
  
  Mond.farbe = #555555;
  Mond.durchmesser = 15;
  Mond.geschwindigkeit = 15;
  Mond.zentralRadius = 25;
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
