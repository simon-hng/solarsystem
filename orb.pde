class orb {  	
  int farbe[] = new int[3];
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
  orb(float x, float y, float d, int r, int g, int b){
    xPos = scale*x;
    yPos = scale*y;
    durchmesser = d;

    farbe[0] = r;
    farbe[1] = g;
    farbe[2] = b;
  }

  //Planeten, Monde
  orb(orb zK, float zR, float d, float v, int r, int g, int b){
    zentralKoerper = zK;
    zentralRadius = zR;

    durchmesser = d;
    speed = v;

    farbe[0] = r;
    farbe[1] = g;
    farbe[2] = b;
  }

  void render(){
    fill(farbe[0], farbe[1], farbe[2]);
    ellipse(xPos, yPos, durchmesser*scale, durchmesser*scale);
  }
  void render(int x, int y){
    xPos = x;
    yPos = y;
  }

  void move(){
    zentralXPos = zentralKoerper.xPos;
    zentralYPos = zentralKoerper.yPos;

    strecke = speed * 0.001*millis();
    xPos = zentralXPos + (scale*zentralRadius) * cos(strecke);
    yPos = zentralYPos + (scale*zentralRadius) * sin(strecke);
  }
}
