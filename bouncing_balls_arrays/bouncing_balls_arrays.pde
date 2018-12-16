
int num = 100;

float [] x = new float[num];
float [] y = new float[num];
float [] dx = new float[num];
float [] dy = new float[num];


void setup(){
  size(800,800);
  for (int i = 0; i < x.length; i++) {
    x[i] = width/2;
  y[i] = height/2;
  dx[i] = random(-5,5);
  dy[i] = random(-5,5);
  }
  
  
  
}


void draw() {
  background(0,255,0);
  float s = 50;

  for (int i = 0; i < x.length; i++) {
  if (dist(mouseX, mouseY, x[i], y[i]) < s/2) {
    fill(0);
  } else {
    fill (255);
  }
  }
   for (int i = 0; i < x.length; i++) { 
   
   ellipse(x[i], y[i], s, s);
  
   x[i] += dx[i];
   y[i] += dy[i];
  
   if (x[i] > width - s/2 || x[i] < s/2) {
   dx[i] = -dx[i]; 
  }
   if (y[i] > height - s/2 || y[i] < s/2) {
    dy[i] = -dy[i];
  }
  }
}
