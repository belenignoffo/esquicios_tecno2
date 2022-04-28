GestorInteraccion gestor;
PGraphics capaTrazos, capaLineas;
Paleta p;
Trazo t;
Linea l;
GestorInteraccion g;
int cont;
color fondo;

void setup() {
  size(1000, 900);
  background( #FFFBF5 );
  //e = new Estado();
  p = new Paleta("eduardo_p1.png");
  t = new Trazo(p);
  g = new GestorInteraccion();
  l = new Linea(p);
  gestor = new GestorInteraccion();
  fondo=  #FFFBF5;
  capaTrazos = createGraphics(width, height);
  capaTrazos.beginDraw();
  capaTrazos.endDraw();
  capaLineas = createGraphics(width, height);
  capaLineas.beginDraw();
  capaLineas.endDraw();

  capaTrazos.beginDraw();
  background(fondo, 255);
  if (frameCount%30==0) {
    t.dibujar(capaTrazos);
  }
  capaTrazos.endDraw();
  image(capaTrazos, 0, 0);
}

void draw() {
  //capaTrazos.beginDraw();
  //background(fondo, 255);
  //if (frameCount%30==0) {
  //  t.dibujar(capaTrazos);
  //}
  //capaTrazos.endDraw();
  //image(capaTrazos, 0, 0);
}
