class Star {
  z[] stars = new z[200];

  Star(){
    for (int i = 0; i < stars.length; i++) {
      stars[i] = new z();
    }
  }
  void show() {
    noStroke();
    for (int i = 0; i < stars.length; i++) {
      stars[i].show(); 
    }
  }
  class z {
    int x, y, size;
    color c;
    z() {
      x = (int)(Math.random() * 500);
      y = (int)(Math.random() * 500);
      size = 1 + (int)(Math.random() * 5);
      c = color((int)(Math.random()*50+150), (int)(Math.random()*50+150), (int)(Math.random()*50 + 200));
    }
    void show() {
      fill(c);
      ellipse(x, y, size, size);
    }
  }
}
