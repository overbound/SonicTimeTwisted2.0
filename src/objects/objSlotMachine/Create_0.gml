action_inherited();
active=false;
player_id = noone;
allow_collision = true;
reaction_script = player_reaction_slot_machine;
instance_create(x,y,objSlotMachineSolidMask);
//slot variables
slot_pos[0]=0;
slot_pos[1]=0;
slot_pos[2]=0;
slot_state[0]=0;
slot_state[1]=0;
slot_state[2]=0;
win=0;
win_icon=0;

