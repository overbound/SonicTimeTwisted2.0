/// @description  Bomb behavoir
if not alarm[0]
{
    // explode if in range
    with objPlayer if distance_to_object(other.id)<64 {other.alarm[0] = 120; other.remove = 0;}
}
else
{
    // pulsate
    image_xscale = 1+sin(alarm[0]*0.333)*0.2;
    image_yscale = image_xscale;
    // flash
    image_blend = make_color_rgb(255, 72+(183*(alarm[0] mod 2)), 255*(alarm[0] mod 2));
}

