
class Trazo {
  ArrayList <PImage> trazos;
  int cantidad;
  float x, y;

  Trazo() {
    cantidad = 5;
    trazos = new ArrayList();
    println(trazos.size());
  }

  void agregarTrazo(String nombreArchivo) {
    PImage imagen = loadImage( nombreArchivo );
    trazos.add( imagen );
  }
  void eliminarTrazo(String nombreArchivo) {
    PImage imagen = loadImage( nombreArchivo );
    trazos.remove( imagen );
  }
  void dibujar() {
    float x = random (width);
    float y = random (height);
    int cual = int(random(trazos.size()));
    PImage elegida = trazos.get( cual );
    push();
    tint(255, 100, 200);
    scale(random(0.8, 1.3));
    rotate(random(0, 1));
    imageMode( CENTER );
    //frameRate(cantidad);
    image(elegida, x, y);
    pop();
    println(trazos.size());
  }
}
