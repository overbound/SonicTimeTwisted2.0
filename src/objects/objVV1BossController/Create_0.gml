event_inherited();
/// Initialize
image_speed = 0;
var i;
// state machine
state = 0;
move_platforms = false;
// boundaries
left = 17552; //17552;36
right = left+426; //it would be based off of the game's width but I ain't taking any risks
top = 1268;
bottom = top+objScreen.height;
height = 1440;

