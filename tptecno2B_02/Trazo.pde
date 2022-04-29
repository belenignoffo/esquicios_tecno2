
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

  // ----- Estilos y propiedades del trazo
  void dibujar(PGraphics grafico) {
    float x = random (width);
    float y = random (height);
    int elegida = int(random(cantidad));
    grafico.push();
    grafico.tint(paletaTrazos.darUnColor());
    grafico.scale(random(0.8, 1.3));
    grafico.rotate(random(0, 1));
    grafico.imageMode( CENTER );
    //frameRate(cantidad);
    grafico.image(trazos[elegida], x, y);
    grafico.pop();
  }
  
  // ----- Método en el que calcula el módulo del frameCount por un parámetro ingresado. Dependiendo de ese resultado es la cantidad de imágenes que aparecen por frame
  void dibujarCapa(PGraphics grafico, float frame) {
    if (frameCount%frame == 0) {
      dibujar(grafico);
    }
  }
}
