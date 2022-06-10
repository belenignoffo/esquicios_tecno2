float[] posX = new float[20];
float[] posY = new float[20];
float[] tam = new float[20];
int contador = 0;
ArrayList<Trazo> ts;


void setup() {
  size(700, 700);
  rectMode( CENTER );
  ts = new ArrayList<Trazo>();
}

void draw() {
  //background(255);
  // ---- Lo que yo necesito que pase:
  boolean condicionRandom = false; // ---- Acá sería siempre que haya sonido 
  float mapeoTam = map(mouseX, 0, width, 150, 230);

  if (condicionRandom) {
    // ---- Acá las posiciones en X e Y deberian ser aleatorias de modo tal que se pisen un poquito pero no tanto
    ts.add(new Trazo(random(width), random(height), mapeoTam)); // ---- El tamaño va a depender del volumen de la voz asi que no es un dato fijo
  }

  for (Trazo t : ts) {
    t.dibujar();
  }
  // ---- Cuando el arraylist supera los 25 se empieza a borrar el [0] para q no colapse, y para que no se sobrecargue el lienzo de trazos
  if (ts.size() >= 25) {
    ts.remove(0);
  }
  /*
  Eso de que el arraylist llegue a 25 es importante porque el programa tiene que estar generando trazos constantemente (siempre y cuando "haySonido == true". 
   No puede pasar que capte sonido y no se agreguen trazos
   */
}


// ---- SOLUCIÓN DEL PROFESOR (comenta el bg para que se vea bien)
void mousePressed() {
  rectMode(CENTER);
  // ---- Un contador que mide lo mismo que el arreglo (arreglo X, Y o TAM. Da igual porq tienen las mismas dimensiones)
  if (contador>=posX.length) {
    contador = 0;
  }

  boolean seSuperponen = true;
  int limite = 10000; // ---- Límite para poder sair del while en algún momento y q no colapse el programa

  while (seSuperponen && limite>0) {

    float nuevoTam = random(120, 190);
    float nuevoX = random(nuevoTam/2, width-nuevoTam/2);
    float nuevoY = random(nuevoTam/2, height-nuevoTam/2);

    seSuperponen = false;

    for (int i=0; i<posX.length; i++) {
      if (dist(nuevoX, nuevoY, posX[i], posY[i])<tam[i]/2+nuevoTam) { // ---- Mide la distancia entre el centro X e Y de las nuevas posiciones, y el centro X e Y de las posiciones []
        seSuperponen=true;
      }
    } 
    /*
    Si yo traslado esto tal cual está acá, lo que pasa es que se dibujan 4 o 5 rect y no se dibujan más porque no sale del ciclo "seSuperponen == true". 
     Probé tocando los tamaños (tamaños que en realidad no dependen del programa sino de la voz) y no tuve éxito 
     Si me podes ayudar joya y sino yafue q la 2pen grax tqm <3
     */
    if (!seSuperponen) {
      posX[contador] = nuevoX;
      posY[contador] = nuevoY;
      tam[contador] = nuevoTam;
      rect(posX[contador], posY[contador], tam[contador], tam[contador]);
      contador++;
    }
    limite--;
    if (limite<=0) {
      contador = 0;
    }
  }
}
