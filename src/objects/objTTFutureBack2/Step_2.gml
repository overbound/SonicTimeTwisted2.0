action_inherited();
/// Update Stars
stars1.image_alpha = 0.5+abs(cos(degtorad(objScreen.image_index*2.4)))*0.5;
stars2.image_alpha = 0.5+abs(sin(degtorad(objScreen.image_index*2.4)))*0.5;

