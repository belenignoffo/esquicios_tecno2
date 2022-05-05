class Linea {
  PImage [] linea;
  Linea() {
    linea = new PImage[4];

    for (int i = 0; i < 4; i++) {
      String nombre = "trazo" + nf(i, 2) + ".png";
      linea[i] = loadImage( nombre );
    }
  }

  void dibujar() {
    float x = random(width);
    float y = random(height);
    int cual = int(random(4));
    image(linea[cual], x, y);
  }
}
