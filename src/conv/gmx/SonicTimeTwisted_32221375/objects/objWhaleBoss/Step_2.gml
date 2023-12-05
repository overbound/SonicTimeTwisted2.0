/// @description  track jaw/fin
if !instance_exists(jaw) exit;
if !instance_exists(fin) exit;
if jaw.life > 0 {
    jaw.x=x;
    jaw.y=y;
    jaw.image_angle=floor(direction);
}
if instance_exists(objWhaleFin) {
    fin.x=x;
    fin.y=y;
    fin.image_angle=floor(direction);
    fin.image_xscale=image_xscale;
if sprite_index == sprWhaleBossJump {
 fin.sprite_index = sprWhaleBossFinJump;
}
}

