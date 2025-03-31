class Player extends GameObject {

  Player(String image, Vector2 initPos) {
    super(image, initPos);
  }

  void ProcessInput() {
    if (keyPressed) {
      // Movimiento hacia adelante basado en la rotación actual
      if (key == 'w'||key == 'W') {
        // Calcula la dirección hacia adelante considerando la rotación actual
        println(transform.rotation);
        float angleInRadians = radians(transform.rotation - 90); // Convertimos a radianes
        Vector2 forward = new Vector2(cos(angleInRadians), sin(angleInRadians));
        println(forward.x + " " + forward.y);
        transform.Translate(forward);
      }
      // Rotación a la izquierda
      if (key == 'a'||key == 'A') {
        transform.Rotate(-5); //velocidad de rotación aquí
      }
      // Rotación derecha
      if (key == 'd' || key == 'D') {
        transform.Rotate(5); //velocidad de rotación
      }

      if (key == ' ') { // Dispara una bala con la barra espaciadora.
        bullets.add(new Bullet("small.png", new Vector2(transform.position.x, transform.position.y), transform.rotation));
      }
      class Bullet extends GameObject {
        float speed = 10; // Velocidad de la bala.

        Bullet(String image, Vector2 initPos, float rotation) {
          super(image, initPos);
          transform.rotation = rotation;
        }
      }
    }
  }
}
