action_inherited();
reaction_script = player_reaction_bubbles_badnik;
active=false;
player_id=noone;
allow_collision=true;
angle = 0;
orbit_speed = 2;
radius=0;
image_speed =0;
var os = 0;
for( var i=0; i < 24; i+=1 ) {
    
    os +=random(32)+32;
    bubble_length[i]=48+random(64);
    bubble_index[i]=random(4)+1;
    bubble_angle[i] = point_direction(x,y,x+64,y+64)+os;    
    bubblex[i] = lengthdir_x(bubble_length[i],bubble_angle[i]) + x;
    bubbley[i] = lengthdir_y(bubble_length[i],bubble_angle[i]) + y;
    
}   


