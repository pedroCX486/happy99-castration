// Original code by Henrik Linusson
// https://github.com/donlnz/processing-examples/tree/master/fireworks

// Modified by pedrocx486
// Modified to simulate as close as possible the fireworks on the Happy99
// vintage virus for old Windows versions.
// More info: https://www.youtube.com/watch?v=Bwpt0EyOSM0 (danooct1 YT Channel)


// Global variables
ArrayList<Firework> fireworks = new ArrayList<Firework>();
PVector gravity = new PVector(0, 0.03);

void setup() {
  // Window setup
  size(400, 800);
  surface.setTitle("Happy99 - Castrated Remake");
  surface.setResizable(false);
  
  // Color Setup
  colorMode(HSB);
  stroke(255);
  strokeWeight(5);
}

void draw() {
  background(0, 0, 0, 10);

  if (random(0, 80) < 1) {
    Firework f = new Firework(round(random(80, 150)));
    fireworks.add(f);
  }
 
  for (int i = fireworks.size() - 1; i >= 0; i--) {
    if (fireworks.get(i).particles.size() < 1) {
      fireworks.remove(i);
    }
    else {
      fireworks.get(i).update();
      fireworks.get(i).show();
    }
  }
}
