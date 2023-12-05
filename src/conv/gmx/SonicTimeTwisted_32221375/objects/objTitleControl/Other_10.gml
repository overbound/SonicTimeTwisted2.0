/// @description  Launch the default logo + name crawl intro
textAlpha = 0;
state = 3;
instance_create(x,y,objTitleEffects);
instance_create(224, -160, objTitleSonic);

with (instance_create(516, 1060, objTitleCloud0))
{
    image_xscale = -1;
}

with(instance_create(340, 1200, objTitleCloud1))
{
    image_xscale = -1;
}
instance_create(120, 1356, objTitleCloud0);
with(instance_create(-208, 1492, objTitleCloud1))
{
    image_yscale = 1.05;
}
alarm[0]=80;

