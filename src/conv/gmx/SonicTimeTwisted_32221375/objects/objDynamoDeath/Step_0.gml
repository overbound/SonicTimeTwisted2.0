if objScreen.image_index mod 16 == 0 {
    var xo=random(32);
    var yo=random(8);
    with instance_create(x+xo-24,y+yo-16,objExplosionGroup) {
        image_xscale=.025;
        image_yscale=.025;
    }
}

