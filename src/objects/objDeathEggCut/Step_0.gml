if sprite_index==sprCutExplosion {
    image_xscale+=.025;
    image_yscale+=.025;
    
    radiusSpeed+=0.0125;
    radius+=radiusSpeed;
    circleAlpha+=.025;
    
    image_alpha -= 0.025;
    
    if radius > 320 {
    
        //instance_destroy();
    
    }
    
}

