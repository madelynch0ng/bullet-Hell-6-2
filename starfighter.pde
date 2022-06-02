class Starfighter extends GameObject {
 
  int cooldown, threshold;

  Starfighter() {
    super(width/2, height/2, 0, 0, 40, p1, 3);
    threshold = 60 ;
    cooldown = threshold;
  }

    void act() {
      super.act();
      //managing guns
      cooldown++;
      if (space && cooldown>= threshold) {
        objects.add(new Bullet());
        cooldown = 0;
      }
      // controlling Starfighter
      if (rightkey ) vx= 5;
      if (leftkey) vx = -5;
      if (upkey) vy =-5;
      if (downkey) vy =5;

      if (!upkey && !downkey) vy = vy *0.9;
      if (!leftkey && !rightkey)vx = vx * 0.9;
    
  }
  }
