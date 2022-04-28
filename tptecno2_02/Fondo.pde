
class Fondo {
  PImage [] trazos;
  int cantidad;
  float x, y;
  Paleta paletaTrazos;

  Fondo(Paleta paletaTrazos, PGraphics fondo) {
    this.paletaTrazos = paletaTrazos;
    cantidad = 15;
    trazos = new PImage[cantidad];
    for (int i = 0; i < cantidad; i++) {
      String nombre = "trazo" + nf(i, 2) + ".png";
      trazos[i] = loadImage( nombre );
    }
    fondo.push();
    fondo.tint(paletaTrazos.darUnColor());
    fondo.scale(random(0.8, 1.3));
    fondo.rotate(random(0, 1));
    fondo.imageMode( CENTER );
    //frameRate(cantidad);
    fondo.image(trazos[1], x, y);
    fondo.pop();
  }

}
