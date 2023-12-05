if sprite_index==sprCutExplosion {

    image_xscale+=.025;
    image_yscale+=.025;
    
    image_alpha -= 0.0125;
    
    if image_alpha <= 0 {
    
        instance_destroy();
    
    }
    
} else {

    y = ystart+cos(offset)*multiplier;
    offset += 0.25;

}

