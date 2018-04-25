class star {
	int farbe[] = new int[3];
	float durchmesser;

	float xPos;
	float yPos;

	star(float x, float y, int d){
		xPos = x;
		yPos = y;

		durchmesser = d;
	}

	void render(){
		fill(255,255,255);
		ellipse(xPos, yPos, durchmesser, durchmesser);
	}
}