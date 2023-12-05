if right > 127 {
    with instance_create(x+random(sprite_width),y+sprite_height,objMagnetSparkle) {parentId = other.id; }
}
alarm[0]=random(10)+8;

