class star {
	int farbe[] = new int[3];
	float durchmesser;

	float xPos;
	float yPos;

	star(float x, float y, int d){
		farbe[0] = 255;
		farbe[1] = 255;
		farbe[2] = 255;

		xPos = x;
		yPos = y;

		durchmesser = d;
	}

	void render(){
		fill(farbe[0], farbe[1], farbe[2]);
		ellipse(xPos, yPos, durchmesser, durchmesser);
	}
}