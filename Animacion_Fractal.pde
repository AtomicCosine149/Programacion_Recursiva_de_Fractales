float angle = PI / 3; // Ángulo de inclinación de las ramas
float initialLength = 200;// Longitud inicial del tronco
PVector origin, endpoint;
int depth = 0; // Nivel de recursión actual

void setup() {
  size(600, 600);
  background(255);
  frameRate(.9); // se puede ajustar la velocidad de la animación cambiando este valor
  origin = new PVector(width / 2, height);
  endpoint = new PVector(width / 2, height - initialLength);
}

void draw() {
  if (depth < 25) { // Controla la profundidad de la recursión
    background(255);
    stroke(0);

    translate(width / 2, height);
    branch(initialLength, depth); // Llama a la función recursiva para dibujar el árbol

    depth++; // Avanza al siguiente nivel de recursión
  }
}

void branch(float len, int d) {
  line(0, 0, 0, -len); // Dibuja el tronco

  translate(0, -len); // Mueve el punto de origen al extremo superior del tronco .i.

  if (d > 0) {
    pushMatrix(); // Guarda la transformación actual
    rotate(angle); // Rota hacia la derecha
    branch(len * 0.50, d - 1); // Llama recursivamente para la rama derecha
    popMatrix(); // Restaura la transformación anterior

    pushMatrix(); // Guarda la transformación actual
    rotate(-angle); // Rota hacia la izquierda
    branch(len * 0.50, d - 1); // Llama recursivamente para la rama izquierda
    popMatrix(); // Restaura la transformación anterior
    
    pushMatrix(); // Guarda la transformación actual
    rotate(angle +.25); // Rota hacia la derecha
    branch(len * 0.60, d - 1); // Llama recursivamente para la rama derecha
    popMatrix(); // Restaura la transformación anterior

    pushMatrix(); // Guarda la transformación actual
    rotate(-angle -.25); // Rota hacia la izquierda
    branch(len * 0.60, d - 1); // Llama recursivamente para la rama izquierda
    popMatrix(); // Restaura la transformación anterior
    
    pushMatrix(); // Guarda la transformación actual
    rotate(angle +.5); // Rota hacia la derecha
    branch(len * 0.60, d - 1); // Llama recursivamente para la rama derecha
    popMatrix(); // Restaura la transformación anterior

    pushMatrix(); // Guarda la transformación actual
    rotate(-angle -.5); // Rota hacia la izquierda
    branch(len * 0.60, d - 1); // Llama recursivamente para la rama izquierda
    popMatrix(); // Restaura la transformación anterior
    
    pushMatrix(); // Guarda la transformación actual
    rotate(angle +.75); // Rota hacia la derecha
    branch(len * 0.50, d - 1); // Llama recursivamente para la rama derecha
    popMatrix(); // Restaura la transformación anterior

    pushMatrix(); // Guarda la transformación actual
    rotate(-angle -.75); // Rota hacia la izquierda
    branch(len * 0.50, d - 1); // Llama recursivamente para la rama izquierda
    popMatrix(); // Restaura la transformación anterior

  }
}
