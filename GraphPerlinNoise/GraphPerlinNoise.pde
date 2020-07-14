
float start;

void setup() {
  size(640,480);
}

void draw() {
  background(52);
  noFill();
  beginShape();
  float t = start;
  for (int i =0; i<width; i++) {
    stroke(255);
    vertex(i, height - map(noise(t), 0, 1, 0, height));
    t += 0.01;
  }
  start += 0.01;
  endShape();
}
