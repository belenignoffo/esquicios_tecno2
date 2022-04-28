
class Trazo {
  PImage [] trazos;
  int cantidad;
  float x, y;
  Paleta paletaTrazos;

  Trazo(Paleta paletaTrazos) {
    this.paletaTrazos = paletaTrazos;
    cantidad = 15;
    trazos = new PImage[cantidad];
    for (int i = 0; i < cantidad; i++) {
      String nombre = "trazo" + nf(i, 2) + ".png";
      trazos[i] = loadImage( nombre );
    }
  }



  void dibujar(PGraphics p) {
    float x = random (width);
    float y = random (height);
    int elegida = int(random(cantidad));
    p.push();
    p.tint(paletaTrazos.darUnColor());
    p.scale(random(0.8, 1.3));
    p.rotate(random(0, 1));
    p.imageMode( CENTER );
    //frameRate(cantidad);
    p.image(trazos[elegida], x, y);
    p.pop();
  }
}
