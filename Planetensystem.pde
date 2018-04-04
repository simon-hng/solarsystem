class Himmelskoerper {
  PShape planet;
  
  color farbe;
  float geschwindigkeit;
  float strecke;
  float durchmesser;
  float masse;
  
  float zentralMasse;
  float zentralXPos;
  float zentralYPos;
  float zentralRadius;
  float xPos;
  float yPos;
  
    //Konstruktor Fuer Himmelskoerper um Sonne
    Himmelskoerper(){
      zentralXPos = 250;
      zentralYPos = 250;
    }
  
  void zeichnen(){
    fill(farbe);
    ellipse(zentralXPos, zentralYPos, durchmesser, durchmesser);
  }
  
  void bewegung(){
    strecke = geschwindigkeit * zeit; 
    xPos = zentralXPos + zentralRadius * cos(strecke);
    yPos = zentralYPos + zentralRadius * sin(strecke);
    fill(farbe);
    ellipse(xPos, yPos, durchmesser, durchmesser);
  }
}
