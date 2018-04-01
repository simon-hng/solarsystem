float time;
Himmelskoerper Sonne = new Himmelskoerper();
Himmelskoerper Erde = new Himmelskoerper();
Himmelskoerper Mond = new Himmelskoerper();
Himmelskoerper Mars = new Himmelskoerper();

void setup() {
  background(0);
  size(500, 500);
  frameRate(100);
  
  Sonne.farbe = #FFFF00;
  Sonne.durchmesser = 50;
  Sonne.zentralXPos = 250;
  Sonne.zentralYPos = 250;
  
  Mars.farbe = #ff0000;
  Mars.durchmesser = 20;
  Mars.speed = 11;
  Mars.zentralRadius = 50;
  Mars.zentralXPos = 250;
  Mars.zentralYPos = 250;
  
  Erde.farbe = #0000FF;
  Erde.durchmesser = 25;
  Erde.speed = 10;
  Erde.zentralRadius = 100;
  Erde.zentralXPos = 250;
  Erde.zentralYPos = 250;
  
  Mond.farbe = #555555;
  Mond.durchmesser = 10;
  Mond.speed = 15;
  Mond.zentralRadius = 25;
}

void draw() {
  background(0);
  time = time + 0.001;
  
  Sonne.zeichnen();
  
  Mars.bewegung();
  
  Erde.bewegung(); 
    Mond.zentralXPos = Erde.xPos;
    Mond.zentralYPos = Erde.yPos;
    Mond.bewegung();
}
