class Trazo {

  float x, y, tam;
  color colorRelleno;

  Trazo(float x, float y, float tam) {
    this.x = x;
    this.y = y;
    this.tam = tam;
    colorRelleno = color(random(255), random(255), random(255));
  }

  void dibujar() {
    pushStyle();
    noStroke();
    fill(colorRelleno);
    rect(x, y, tam, tam);
    popStyle();
  }
}
