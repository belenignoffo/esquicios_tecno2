
class Linea {
  //ArrayList <PImage> lineas;
  PImage [] lineas;
  float x, y;
  int elegida;
  Paleta paletaLineas;

  Linea(Paleta paletaLineas) {
    this.paletaLineas = paletaLineas;
    x = random(100, width-200);
    y = random(100, height-200);
    //lineas = new ArrayList();
    lineas = new PImage[5];
    for (int i = 0; i < 5; i ++) {
      String nombre = "linea" + nf(i, 2) + ".png";
      lineas[i] = loadImage( nombre );
    }
    elegida = int(random(0, 5));
  }
  void dibujar() {
    for (int i = 0; i < 5; i++) {   
      image(lineas[elegida], x, y);
    }
  }

  //void agregarLinea(String nombreArchivo) {
  //  PImage imagen = loadImage( nombreArchivo );
  //  lineas.add( imagen );
  //}

  //void dibujar(int numero) {
  //  int cual = int(random(lineas.size()));
  //  PImage elegida = lineas.get( cual );
  //  push();
  //  tint(paletaLineas.darUnColor());
  //  scale(random(0.8, 1.3));
  //  imageMode( CENTER );
  //  frameRate(numero);
  //  image(elegida, x, y);
  //  pop();
  //}
}
