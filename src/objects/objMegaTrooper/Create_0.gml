action_inherited();
state = 0;
remove=0;
started=false;
 
yorigin=3456;
ycollision=3624;
    

  head = MegaTrooperHeadNew(x, y - 176);
  with head {
    xoffset = 0;
    yoffset = -176;
  }
  
  
  shoulderLeft = MegaTrooperShoulderNew(x - 175, y - 8, -1);
  
  with shoulderLeft {
    
    xoffset = -175;
    yoffset = -8;
  
  }
  shoulderRight = MegaTrooperShoulderNew(x + 175, y - 8, 1);
  
    with shoulderRight {
    
    xoffset = 175;
    yoffset = -8;
    
  }
  
  handLeft = MegaTrooperHandNew(x - 160, y -48, -1);
  
  with handLeft {
     
    xoffset = -212;
    yoffset = -48;
    alarm[11]=180;
  
  }
  
  handRight = MegaTrooperHandNew(x + 160, y -48, 1);
  
    with handRight {
     
    alarm[11]=120;
    xoffset = 212;
    yoffset =-48;
  
  }
  
  var i, a, b;
  
  a = noone;
  b = noone;
  
  for (i = 0; i < 8; i += 1)
  {
    a = MegaTrooperOrbNew(i, handLeft, shoulderLeft, a);
    b = MegaTrooperOrbNew(i, handRight, shoulderRight, b);
  }

reaction_script = noone;
