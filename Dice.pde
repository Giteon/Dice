 Die [] aBunch;

int sum = 0;
 void setup()
 {
 	size(1400,1000);
	aBunch = new Die[14000];

	noLoop();
}

void draw()
{
	int index = 0;

	for(int r = 0 ; r < 1400 ; r +=10) 
	{
		for(int c = 0 ; c < 1000 ; c +=10) 
		{
			aBunch[index] = new Die(r,c); 
			aBunch[index].show();
			aBunch[index].roll();
			sum = sum + aBunch[index].numDots;
			index += 1;
		}
	}
	stroke(255,0,0);
	textSize(100);
	text("number of dots: " + sum,100,500);
}
void mousePressed()
{
	redraw();
	sum = 0;
}
class Die //models one single dice cube
{
	int myX;
	int myY;
	int numDots;

	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		numDots = (int)(Math.random()*6+1);
	}
	void roll()
	{
		numDots = (int)(Math.random()*6+1);
		fill(0);

		if (numDots == 1)
		{
			ellipse(myX+5,myY+5,1.2,1.2);
		}	
		if (numDots == 2)
		{
			ellipse(myX+2.6,myY+2.6,1.2,1.2);
			ellipse(myX+7.4,myY+7.4,1.2,1.2);
		}
		if (numDots == 3)
		{
			ellipse(myX+5,myY+5,1.2,1.2);
			ellipse(myX+2.6,myY+2.6,1.2,1.2);
			ellipse(myX+7.4,myY+7.4,1.2,1.2);
		}
		if (numDots == 4)
		{
			ellipse(myX+2.6,myY+2.6,1.2,1.2);
			ellipse(myX+7.4,myY+7.4,1.2,1.2);
			ellipse(myX+2.6,myY+7.4,1.2,1.2);
			ellipse(myX+7.4,myY+2.6,1.2,1.2);
		}
		if (numDots == 5)
		{
			ellipse(myX+5,myY+5,1.2,1.2);
			ellipse(myX+2.6,myY+2.6,1.2,1.2);
			ellipse(myX+7.4,myY+7.4,1.2,1.2);
			ellipse(myX+2.6,myY+7.4,1.2,1.2);
			ellipse(myX+7.4,myY+2.6,1.2,1.2);
		}
		if (numDots == 6)
		{
			ellipse(myX+2.6,myY+2.6,1.2,1.2);
			ellipse(myX+7.4,myY+7.4,1.2,1.2);
			ellipse(myX+2.6,myY+7.4,1.2,1.2);
			ellipse(myX+7.4,myY+2.6,1.2,1.2);

			ellipse(myX+7.4,myY+5,1.2,1.2);
			ellipse(myX+2.6,myY+5,1.2,1.2);
		}


	}
	void show()
	{
		fill(255);

		stroke(0);
		rect(myX,myY,10,10);

	}
}
