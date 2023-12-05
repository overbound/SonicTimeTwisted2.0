if(alpha_change = 1)
{
    image_alpha -= .05;
}
if(image_alpha <= 0)
    instance_destroy();

