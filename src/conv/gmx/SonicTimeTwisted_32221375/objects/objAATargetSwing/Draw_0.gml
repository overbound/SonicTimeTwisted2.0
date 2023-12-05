draw_self();
/// Render chain links
var i;
for (i=0; i<5; i+=1)
{
    draw_sprite(sprChainLink, 0, xstart+sine[angle]*(i*16), ystart+cosine[angle]*(i*16));
    draw_sprite(sprChainLink, 0, xstart-sine[angle]*(i*16), ystart-cosine[angle]*(i*16));
}

