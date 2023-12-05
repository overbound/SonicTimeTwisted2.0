/// @description  Animations

// spotlights
with spotlight[0] {
     image_angle = cos(degtorad(objScreen.image_index*1.5))*20;
    visible = !visible;
}
    
with spotlight[1] {
    image_angle = cos(degtorad(180+objScreen.image_index*1.5))*20;
    visible = !visible;
}

// stars
with stars image_alpha = 0.35+abs(cos(degtorad(objScreen.image_index*2.4)))*0.45;

// building lights
with lights[0] image_alpha = 0.1+abs(cos(degtorad(objScreen.image_index*5)))*0.9;
with lights[1] image_alpha = 0.35+abs(cos(degtorad(objScreen.image_index*2.5)))*0.4;

