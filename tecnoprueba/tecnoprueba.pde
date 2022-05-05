/*

 */


Trazo t;
ArrayList<Linea> l;

void setup() {
  size(1000, 900);
  colorMode( HSB, 360, 100, 100 );
  background( 36, 5, 99 );
  t = new Trazo();
  line(250, 0, 250, height);
  println(t);
  l = new ArrayList<Linea>();
  for (int i= 0; i < 1; i++) {
    l.add(new Linea());
  }
}

void draw() {

  if (mouseX == 250) {
    for (Linea t : l) {
        t.dibujar();
      }
    }
}

void mouseClicked() {
  for (int i = 0; i < 1; i++) {
    String nombre = "trazo" + nf(i, 2) + ".png";
    t.agregarTrazo( nombre );
    t.dibujar();
  }

  if (mouseX == 250) {
    for (int i = 0; i < 1; i++) {
      String nombre = "trazo" + nf(i, 2) + ".png";
      t.agregarTrazo( nombre );
    }
    t.dibujar();
  }
}
