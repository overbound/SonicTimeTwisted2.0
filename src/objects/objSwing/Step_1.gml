/// @description  Movement and animation
metronome = (metronome + metronome_speed) mod 360;
// calculate oscillation and move nodes
var v_sine = dsin(metronome);
for (var node = 1; node < total_nodes + 1; node++) {
    oscillation = v_sine * node * degrees_per_node;
    node_x[ node ] = node_x[ node - 1 ] + dsin(oscillation) * node_distance;
    node_y[ node ] = node_y[ node - 1 ] + dcos(oscillation) * node_distance;
}
x = node_x[ total_nodes ];
y = node_y[ total_nodes ];

with (other) {
/// control player
if active
    with player_id {
    
        x = other.x;
        y = other.y;
    
        if input_check_pressed(cACTION) {
            // removing the "cACTION pressed" bit so that the instashield/flight/glide doesn't immediately activate
            objProgram.inputManager.state_press = objProgram.inputManager.state_press & (~cACTION);
            objProgram.inputManager.state_press = objProgram.inputManager.state_press & (~cA);
            objProgram.inputManager.state_press = objProgram.inputManager.state_press & (~cB);
            objProgram.inputManager.state_press = objProgram.inputManager.state_press & (~cC);
            
            // sound
            play_sfx(sndJump, 0);
            
            other.active = false;
            other.player_id = noone;
            
            var ground_speed;
            // animate
            animation_new = "spin";
            timeline_speed = 1/max(5-abs(xspeed), 1);
            image_angle = 0;
            
            // states and flags
            state = player_state_fall;
            spinning = true;
            jumping = true;
            jump_action = true;
            spindashing = false;
            xspeed = (-dcos(other.oscillation)*other.metronome_speed)*sign(other.oscillation);
            yspeed = -5;
            sprite_y_offset = 0;
            
            // set air state
            player_in_air();
            other.reaction_script=noone;
            other.alarm[0] = 60;
        
        }
    }

}
