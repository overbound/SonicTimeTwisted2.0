action_inherited();
/// Create jaw and eyes  
    jaw = MegaTrooperJawNew(x, y + 56);
  with jaw {
    xoffset = 0;
    yoffset = 56;
  }
  
  headBack = instance_create(x,y+55,objMegaTrooperHeadBack);
  with headBack {
    xoffset = 0;
    yoffset = 56;
  }
  
  eyeLeft = MegaTrooperEyeNew(x - 25, y - 6);
    with eyeLeft {
    xoffset = -25;
    yoffset = -6;
    centerx = x;
    centery = y;
  }
  
  eyeRight = MegaTrooperEyeNew(x + 25, y - 6);
    with eyeRight {
    xoffset = 25;
    yoffset = -6;
    centerx = x;
    centery = y;
  }

remove = 0;
