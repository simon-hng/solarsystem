class orb {
  color farbe;
  float speed;
  float strecke;
  float durchmesser;

  orb zentralKoerper;
  float zentralXPos;
  float zentralYPos;
  float zentralRadius;
  float xPos;
  float yPos;


  //sonnen
  orb(float x, float y, float d){
    farbe = #FFFFFF;
    xPos = x;
    yPos = y;
    durchmesser = d;
  }

  //Planeten, Monde
  orb(orb zK, float zR, float d, float g){
    farbe = #FFFFFF;
    zentralKoerper = zK;

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
    zentralXPos = zentralKoerper.xPos;
    zentralYPos = zentralKoerper.yPos;
    
    xPos = zentralXPos + zentralRadius * cos(strecke);
    yPos = zentralYPos + zentralRadius * sin(strecke);
  }
}
