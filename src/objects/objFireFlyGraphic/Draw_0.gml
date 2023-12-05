/// @description  Draw Flash
draw_set_color(c_white);
if objFireFly.state < 12 {
    draw_sprite_ext(sprFireFlyWingLeft,0,x-10,y-20,1,1,leftRotation,c_white,.5);
    draw_sprite_ext(sprFireFlyWingRight,0,x+10,y-20,1,1,rightRotation,c_white,.5);
}
draw_boss_hit_blend(2);
draw_self();
draw_boss_hit_blend(2);

