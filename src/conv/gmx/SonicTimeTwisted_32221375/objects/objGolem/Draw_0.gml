if image_xscale < 1 {
    xOffsetFoot=22;
    yOffsetFoot=40;
}
draw_sprite_ext(sprGolemJet,jetImage,x-28,y-20,image_xscale,image_yscale,0,c_white,1);
draw_sprite_ext(sprGolemJet,jetImage,x+28,y-20,image_xscale,image_yscale,0,c_white,1);
draw_self();
draw_sprite_ext(sprGolemFoot,0,x-xOffsetFoot,y+yOffsetFoot,image_xscale,image_yscale,0,c_white,1);
draw_sprite_ext(sprGolemFoot,0,x+xOffsetFoot,y+yOffsetFoot,-image_xscale,image_yscale,0,c_white,1);


