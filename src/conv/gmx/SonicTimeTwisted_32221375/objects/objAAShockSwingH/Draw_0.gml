/// @description  Render chain links
var i;
for (i=0; i<9; i+=1) draw_sprite(sprChainLink, 0, xstart+cosine[angle]*(i*16), ystart-sine[angle]*(i*16));
draw_sprite(sprAASwingFrame, 0, xstart, ystart);

draw_self();
