action_inherited();
/// Animate

// increase index infinitely
index += 0.25;
if(index >= 21)
{
    index = 0;
}
// rotate
image_angle = angle_wrap(image_angle+4*(abs(cosine[image_angle])+0.1));

// flicker
image_alpha = !image_alpha;



