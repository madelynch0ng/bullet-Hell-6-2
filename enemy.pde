class Enemy extends GameObject {
  Enemy() {
    super(random(width), -20, 0, 5, 40, yellow1, 1);
  }

  void act() {
    super.act();


    //collisions
    int i = 0;
    while (i < objects.size()) {
      GameObject obj = objects.get(i); 
      if (obj instanceof Bullet) {
        if (collidingWith(obj)) {
          lives--;
          
        }
      }
      i++;
    }
    //remove if 
  }
}
