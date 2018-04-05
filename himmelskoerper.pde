class Himmelskoerper {
  color farbe;
  float geschwindigkeit;
  float strecke;
  float durchmesser;

  float zentralXPos;
  float zentralYPos;
  float zentralRadius;
  float xPos;
  float yPos;

  Himmelskoerper(float d, float g , float zR ){
    farbe = #FFFFFF;
    zentralXPos = 250;
    zentralYPos = 250;

    durchmesser = d;
    geschwindigkeit = g;
    zentralRadius = zR;
  }

  void zeichnen(){
    fill(farbe);
    ellipse(xPos, yPos, durchmesser, durchmesser);
  }

  void bewegung(){
    strecke = geschwindigkeit * zeit;
    xPos = zentralXPos + zentralRadius * cos(strecke);
    yPos = zentralYPos + zentralRadius * sin(strecke);
  }
}
