
ArrayList<GameObject> drawables = new ArrayList<GameObject>();
Player ship;
ArrayList<Bullet> bullets = new ArrayList<Bullet>(); // Lista para almacenar las balas.
void setup(){
  size(1024, 768);
  ship = new Player("ship.png", new Vector2(512, 384));
  ship.transform.Rotate(60);
}

void draw(){
  background(0);
  ship.ProcessInput();
   for (int i = bullets.size() - 1; i >= 0; i--) { // Itera a través de las balas en orden inverso.
    Bullet bullet = bullets.get(i);
    bullet.Update();
    bullet.Display();
    if (bullet.IsOffScreen()) { // Elimina las balas  fuera 
      bullets.remove(i);
    }
  }
 


 
