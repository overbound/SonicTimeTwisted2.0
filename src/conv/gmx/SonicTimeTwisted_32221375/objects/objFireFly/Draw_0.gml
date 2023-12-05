
//draw_self();
if state >= 7 && state < 12 {
    draw_set_blend_mode( bm_subtract );
         draw_sprite_ext(sprFireFlyLightMask,0,x,y,1,1,0,c_white,blackAlpha);
    draw_set_blend_mode( bm_normal ); 
    draw_sprite_ext(sprBlack,0,blackX[0],blackY[0],blackScaleX[0],blackScaleY[0],0,c_white, blackAlpha);
    draw_sprite_ext(sprBlack,0,blackX[1],blackY[1],blackScaleX[1],blackScaleY[1],0,c_white, blackAlpha);
    draw_sprite_ext(sprBlack,0,blackX[2],blackY[2],blackScaleX[2],blackScaleY[2],0,c_white, blackAlpha);
    draw_sprite_ext(sprBlack,0,blackX[3],blackY[3],blackScaleX[3],blackScaleY[3],0,c_white, blackAlpha);
}

