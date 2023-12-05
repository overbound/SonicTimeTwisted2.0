/// @description  Move
if move == true {
    if ystart < y +1472 {
    
        ycord -= yspeed;
        y=floor(ycord);
        screen_shake();
    
    } else {
        
        y=704;
        
    }
}

/// Spawn bubbles
var type;
// abort if not in water
if not place_meeting(x, y, objWater) {
visble = false;
exit;
}
// abort if too soon
if objScreen.image_index mod 240 exit;
// get a pattern different from the last
do type = irandom(3); until (type!=pattern);
pattern = type;
// set bubble amount based on pattern
if (pattern==1) count = 3; else
if (pattern==2) count = choose(5, 6);
if (pattern==3) count = 2;
// start pattern
alarm[pattern] = 10;

