class planet {
  color farbe;
  float speed;
  float strecke;
  float durchmesser;

  float zentralXPos;
  float zentralYPos;
  float zentralRadius;
  float xPos;
  float yPos;

  planet(float d, float g , float zR ){
    farbe = #FFFFFF;
    zentralXPos = 250;
    zentralYPos = 250;

    durchmesser = d;
    speed = g;
    zentralRadius = zR;
  }

  void render(){
    ellipse(xPos, yPos, durchmesser, durchmesser);
    fill(farbe);
  }

  void bewegung(){
    strecke = speed * time;
    xPos = zentralXPos + zentralRadius * cos(strecke);
    yPos = zentralYPos + zentralRadius * sin(strecke);
  }
}
