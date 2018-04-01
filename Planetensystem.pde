class Himmelskoerper {
  PShape planet;
  
  color farbe;
  float speed;
  float strecke;
  float durchmesser;
  float masse;
  
  float zentralMasse;
  float zentralXPos;
  float zentralYPos;
  float zentralRadius;
  float xPos;
  float yPos;
  
  void zeichnen(){
    fill(farbe);
    ellipse(zentralXPos, zentralYPos, durchmesser, durchmesser);
  }
  
  void bewegung(){
    strecke = speed * time; 
    xPos = zentralXPos + zentralRadius * cos(strecke);
    yPos = zentralYPos + zentralRadius * sin(strecke);
    fill(farbe);
    ellipse(xPos, yPos, durchmesser, durchmesser);
  }
}
