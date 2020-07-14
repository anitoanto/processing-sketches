
float start;

OpenSimplexNoise n;

void setup() {
  size(640,480);
  n = new OpenSimplexNoise();
}

void draw() {
  background(52);
  noFill();
  beginShape();
  float t = start;
  for (int i =0; i<width; i++) {
    stroke(255);
    vertex(i, height - map((float)n.eval(t,0), -1, 1, 0, height));
    t += 0.01;
  }
  start += 0.01;
  endShape();
}
