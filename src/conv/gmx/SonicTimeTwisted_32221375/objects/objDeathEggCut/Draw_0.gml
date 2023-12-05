if sprite_index == sprCutExplosion {
    draw_set_alpha(circleAlpha)
    draw_circle(x,y,radius,false);
    draw_set_alpha(1);
    
}
draw_self();

