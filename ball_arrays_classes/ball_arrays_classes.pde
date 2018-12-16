// Code 1 FA_18
// Bryan Ma

// Ball object

// this sketch shows how to create a basic class, called Ball.
// it instantiates a few of them and gives each instance of the object a unique name. 

// replace the 3 separate ball objects with an array of balls. 
// you can do this with something like:
//  Ball[] ballArray = new Ball[3];
// the next step in the setup() function is to loop through the array and instantiate
//  each one, calling the constructor for each step of the loop:
//  ballArray[i] = new Ball();
// finally in the draw() function, loop through the array again, and call the update() 
//  and display() methods of each one of the balls in the array. 

// if you are able to do all that, modify both the size of the ball array as well as
//  the ball class itself to experiment with the behavior and visuals. for example, 
//  you could control the color based on the mouse distance to each ball by using 
//  the dist() function and map().

int o;
int r;
int x = 50;
Ball[] ballArray = new Ball[x];


void setup() {
  size(800, 800);
  for(int i = 0; i<x; i++) {
    ballArray[i] = new Ball(); 
    }

}


void draw() {
  background(0);
  for(int i = 0; i<x; i++) {
  ballArray[i].update();
  ballArray[i].display();
  }


}

class Ball {
  float x, y;
  float dx, dy;
  float s;

  // this function is called a constructor. 
  // it is called when a new Ball object is created.
  Ball() { 
    x = width/2;
    y = height/2;
    dx = random(-5, 5);
    dy = random(-5, 5);
    s = 30;
  }

  void display() {
    
     float dist = dist(x, y, mouseX, mouseY);
     int o = int(map(dist, x, y, 0, 255));
     fill(random(255),random(255),random(255),o);
     noStroke();
    ellipse(x, y, s, s);
     
    
  }

  void update() {
    x += dx;
    y += dy;

    if (x > width - s/2 || x < s/2) {
      dx *= -1;
    }
    if (y > height - s/2 || y < s/2) {
      dy *= -1;
    }
  }
}
