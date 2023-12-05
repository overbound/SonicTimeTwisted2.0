/// @description  Bomb behavoir
if gravity != 0
{
    // pulsate
    image_xscale = 1+sin(objScreen.image_index*0.333)*0.2;
    image_yscale = image_xscale;
    remove=2;
    reaction_script=player_reaction_harmful;
    // flash
    image_blend = make_color_rgb(255, 72+(183*(objScreen.image_index mod 2)), 255*(objScreen.image_index mod 2));
}

