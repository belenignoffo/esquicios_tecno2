
class GestorInteraccion {
  Dir_y_Vel mouse;
  Paleta p;
  boolean arriba, abajo, izquierda, derecha;
  boolean seMoviaEnElFrameAnterior;

  GestorInteraccion() {
    p = new Paleta("eduardo_p1.png");
    mouse = new Dir_y_Vel();
  }

  void actualizar() {
    mouse.calcularTodo(mouseX, mouseY);
    boolean seMueveEnEsteFrame = false;
    float sensibilidad = 5;
    if (mouse.velocidad()>sensibilidad && mouse.velocidad()<150) {
      seMueveEnEsteFrame = true;
    }
    arriba = false;
    abajo = false;
    derecha = false;
    izquierda = false;

    if (seMueveEnEsteFrame &&
      !seMoviaEnElFrameAnterior) {
      arriba = mouse.direccionY()<-sensibilidad?true:false;
      abajo = mouse.direccionY()>sensibilidad?true:false;
      derecha = mouse.direccionX()>sensibilidad?true:false;
      izquierda = mouse.direccionX()<-sensibilidad?true:false;
    }
    seMoviaEnElFrameAnterior = seMueveEnEsteFrame;
  }
}
