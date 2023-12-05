if sprite_index == sprCutExplosion
exit;

if image_xscale == .25  && abs(y-other.y) < 15 {
    sprite_index=sprCutExplosion;
    image_xscale = .125;
    image_yscale = .125;
    image_index=0;
    x+=20;
    y+=12;
    depth=3;
    play_sfx(sndBrokenBadnik,10);
}

