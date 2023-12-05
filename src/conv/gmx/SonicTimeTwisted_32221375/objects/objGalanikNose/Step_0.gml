x = parentId.x;
y = parentId.y;

if life <= 0 {
    with objGalanik {
        state = 6;
        eye_index = 0;
    }
    with objGalanikSmall instance_destroy();
    with objBossPlatform ysp = 0;
    instance_destroy();
   
}
image_xscale=1+cos(objScreen.image_index/8)*0.0675;
image_yscale=image_xscale;

