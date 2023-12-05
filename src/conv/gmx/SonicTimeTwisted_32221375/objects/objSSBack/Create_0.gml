action_inherited();
// Initialize background
image_speed = 0;
var relative_y;
// defaults
surface = -1;
relative_y = 1;
skyBlue= make_colour_rgb(24, 138, 255);
darkBlue= make_colour_rgb(7,11,32);
shake = false;
with objParallax {depth =999;}
top[0] = instance_create(0,0,objSSZBGParallax);
with top[0] {
    absolute_y=1;
    tiled=1;    
    relative_x =.86;
    }
    
top[1] = instance_create(0,0,objSSZBGParallax2); //48
with top[1] { 
    absolute_y=49;
    tiled=1;
    relative_y=1;
    relative_x =0.88;
    }         
    
top[2] = instance_create(0,0,objSSZBGParallax3);
with top[2] { 
    absolute_y=73;
    tiled=1;
    relative_x =0.9;
    }
top[3] = instance_create(0,0,objSSZBGParallax4);
with top[3] { 
    absolute_y=85;
    tiled=1;
    relative_x =0.92;
    }
    
  
bottom[0] = instance_create(0,0,objSSZBGParallax);
with bottom[0] { 
    absolute_y=240;
    image_yscale=-1;
    tiled=1;
    relative_x =0.92;
    }
    
bottom[1] = instance_create(0,0,objSSZBGParallax2);
with bottom[1] { 
    absolute_y=192;
    image_yscale=-1;
    tiled=1;
    relative_x =0.9;
    }
bottom[2] = instance_create(0,0,objSSZBGParallax3);
with bottom[2] { 
    absolute_y=168;
    image_yscale=-1;
    tiled=1;
    relative_x =0.88;
    }
    
bottom[3] = instance_create(0,0,objSSZBGParallax4);
with bottom[3] { 
    absolute_y=156;
    image_yscale=-1;
    tiled=1;
    relative_x =0.85;
    }
    
backWall = instance_create(0,0,objSSZBGParallax);  
with backWall {
    absolute_y=90;
    tiled=1;
    relative_x =0.95;
    sprite_index=sprSSZBGWindow;
    image_speed = 0;
}
cloud[0]=parallax_create_sprite(1, sprSSZCloud, 0,0, 1,0.92,relative_y,200,60,300,160);
with cloud[0] { image_index=1; visible = false; }
cloud[1]=parallax_create_sprite(1, sprSSZCloud, 0, 0, 3,0.90,relative_y,0,408,90,150);
with cloud[1] { image_index=1; visible = false; }
cloud[2]=parallax_create_sprite(1, sprSSZCloud, 0, 0, 3,0.85,relative_y,0,20,200,180);
with cloud[2] { image_index=1; visible = false; }
cloud[3]=parallax_create_sprite(1, sprSSZCloud, 0, 0,2,0.90,relative_y,0,30,180,220);
with cloud[3] { image_index=1; visible = false; }
littlePlanet=parallax_create_sprite(1, sprSSZLittlePlanet, 0, 0, 0, 1,0.98,290,274,512,60);

