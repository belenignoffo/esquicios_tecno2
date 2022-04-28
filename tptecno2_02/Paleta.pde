
class Paleta {

  PImage imagen;
  float valor;
  Paleta (String nombreArchivo) {

    imagen = loadImage( nombreArchivo );
  }

  color darUnColor() {
    float alfa = 25;
    if (mouseY > 0 && mouseY < height) {
      alfa = map(mouseY, height, 0, 25, 255);
    } else {
      alfa = 25;
    }
    int posX = int( random( imagen.width ));
    int posY = int( random( imagen.height ));
    color este = imagen.get( posX, posY );
    return color( red(este), green(este), blue(este), alfa);
  }
}
