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

  //Constructor for sun
  orb(int d, int r, int g, int b){
    zentralRadius = 1;
    durchmesser = d;

    farbe[0] = r;
    farbe[1] = g;
    farbe[2] = b;
  }

  //Planeten, Monde
  orb(float zR, float d, float v, int r, int g, int b){
    zentralRadius = zR;

    durchmesser = d;
    speed = v;

    farbe[0] = r;
    farbe[1] = g;
    farbe[2] = b;
  }

  void render(){
    pushMatrix();
      translate(450, 450, 0);
      noStroke();
      lights();

      fill(farbe[0], farbe[1], farbe[2]);
      pushMatrix();
        rotate(millis()*radians(0.1*speed));
        translate(scale*zentralRadius, 0, 0);
        sphere(scale*durchmesser);
      popMatrix();
    popMatrix();
  }
}
