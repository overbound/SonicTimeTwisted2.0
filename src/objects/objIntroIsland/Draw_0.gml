draw_self();
draw_sprite(sprIntroWater,floor(iindex),x,187)
iindex+=.1;
if iindex>=4 iindex =0;
draw_sprite_ext(sprIntroSpotlight,0,262,158,1,1,angle0,c_white,alpha);
draw_sprite_ext(sprIntroSpotlight,0,290,158,1,1,angle1,c_white,alpha);

