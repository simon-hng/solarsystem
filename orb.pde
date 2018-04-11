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
    fill(farbe);
    translate(xPos, yPos);
    sphere(durchmesser);
  }

  void move(){
    zentralXPos = zentralKoerper.xPos;
    zentralYPos = zentralKoerper.yPos;

    pushMatrix();
      rotate(millis() * speed * TWO_PI);
      translate(zentralRadius,0);
      fill(farbe);
      sphere(durchmesser); 
    popMatrix();
  }
}
