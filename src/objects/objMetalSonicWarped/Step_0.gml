if sprite_index == sprMetalSonicWarped {
    if image_xscale < 1 {
    
        image_xscale+=0.025;
        image_yscale+=0.025;
    
    }
    
    if y > 60 {
    
        gravity=0;
        hspeed=0;
        vspeed=0;
        y = 62+sin(offset);
        offset += 0.22;
    }
}
else if sprite_index == sprMetalSonicWarpedBig && image_xscale < .68 {
    image_xscale+=.0042;
    image_yscale+=.0042;
}

