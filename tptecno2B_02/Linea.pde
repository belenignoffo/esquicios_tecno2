
class Linea {

  PImage [] lineas;
  float x, y;
  int elegida;
  Paleta paletaLineas;

  Linea(Paleta paletaLineas, int elegida) {
    this.elegida = elegida;
    this.paletaLineas = paletaLineas;
    lineas = new PImage[5];
    x = random(width);
    y = random(height);
    for (int i = 0; i < 5; i ++) {
      String nombre = "linea" + nf(i, 2) + ".png";
      lineas[i] = loadImage( nombre );
    }
    //tint(paletaLineas.darUnColor());
  }

  void dibujar(PGraphics grafico) {

    //
    //tint(random(200, 255), random(100, 255), random(10, 255));
    grafico.image(lineas[elegida], x, y);
  }
}
