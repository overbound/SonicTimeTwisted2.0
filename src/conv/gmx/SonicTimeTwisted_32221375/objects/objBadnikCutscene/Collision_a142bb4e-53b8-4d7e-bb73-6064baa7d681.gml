if sprite_index == sprCutExplosion
exit;

if image_xscale == 1 {
    x+=62;
    y+=45;
    sprite_index=sprCutExplosion;
    image_xscale = .125;
    image_yscale = .125;
    image_index=0;
    depth=0;
    play_sfx(sndBrokenBadnik,10);
}

