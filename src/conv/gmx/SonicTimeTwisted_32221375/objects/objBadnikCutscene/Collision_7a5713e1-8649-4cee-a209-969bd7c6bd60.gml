if sprite_index == sprCutExplosion
exit;

if image_xscale == .5 {
    sprite_index=sprCutExplosion;
    image_xscale = .125;
    image_yscale = .125;
    image_index=0;
    x+=31;
    y+=24;
    depth=1;
    play_sfx(sndBrokenBadnik,10);
}

