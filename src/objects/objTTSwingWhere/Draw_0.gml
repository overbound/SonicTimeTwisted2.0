/// @description  Render chain links
var i, j;
for (i=0; i<5; i+=1) for (j=0; j<3; j+=1) draw_sprite(sprChainLink, 0, xstart+sine[angle_wrap(angle+(j*120))]*(i*16), ystart+cosine[angle_wrap(angle+(j*120))]*(i*16));

draw_self();
