/*
COSAS QUE FALTAN:
- Capa Lineas e interacción. Lograr que aparezca una línea en la posición que se movió "rápido" el mouse
- Inactividad. Hacer que desaparezcan todas las capas (o algunas ¿??) después de X segundos inactivo. 
- Inclinación de los trazos
- ¿Cómo vamos a trabajar los trazos? Un único objeto que tiene array o arraylist de imágenes, un objeto que lo declaramos en un array de objetos, un arraylist de objetos... 
- ¿Va a tener final la obra? Si termina, ¿Qué pasa con los elementos cuando termina? ¿Se puede seguir interactuando de alguna manera? 
*/

GestorInteraccion gestor;
PGraphics capaTrazos, capaLineas, capaFondo;
Paleta p;
Trazo trazos;
Linea [] l;
GestorInteraccion g;
int cantidad;
color fondo;

void setup() {
  size(1000, 900);
  background( #FFFBF5 );
  //e = new Estado();
  cantidad = 20;
  p = new Paleta("eduardo_p1.png");
  trazos = new Trazo(p);
  g = new GestorInteraccion();
  l = new Linea[cantidad];
  for (int i = 0; i < cantidad; i ++) {
    l[i] = new Linea(p, int(random(5)));
  }
  fondo =  #FFFBF5;

  capaFondo = createGraphics(width, height);
  capaTrazos = createGraphics(width, height);

  capaFondo.beginDraw();
  push();
  background(fondo, 0);
  //  ----- Esto es una prueba para las figuras del "fondo". No pude resolver aplicar la paleta, capaz nos convenga tener ciertos png con color solo para el fondo
  for (int i = 0; i < cantidad; i++) {
    tint(255, 100, 0);
    l[i].dibujar(capaFondo);
  }
  pop();
  capaFondo.endDraw();
}

void draw() {

  capaTrazos.beginDraw();
  background(fondo, 200);
  // ----- Esto iría en "Estados". Evalúo la posición del mouse en X y en función de eso paso el parámetro del %frameCount.
  if (mouseX > 0 && mouseX < 333) { //  ----- Pos. izquierda: aparecen menos por frame
    trazos.dibujarCapa(capaTrazos, 30);
  } else if (mouseX > 666 && mouseX < 1000) { //  ----- Pos. derecha: aparecen muchos por frame
    trazos.dibujarCapa(capaTrazos, 2);
  } else { //  ----- Pos. central: estandar
    trazos.dibujarCapa(capaTrazos, 10);
  }
  capaTrazos.endDraw();
  image(capaFondo, 0, 0);
  image(capaTrazos, 0, 0);
}
