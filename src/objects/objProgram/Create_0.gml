/// @description  Initialize

// restore VM math precision as early as possible, if it's YYC.
if (code_is_compiled()) {
    show_debug_message("YYC is enabled, expect weird behaviour.");
    math_set_epsilon(0.00001);
}
init_device_info();
image_speed = 0;
level = "";
/* AUTHOR NOTE: This object controls all global game operations, such as the
level order. */
// state
game_mode = 1;
paused = false;
lost_focus = false;
check_room = 0;
check_cheatcode = false; // will persist across title returns.
// controllers
instance_create(0, 0, objScreen);
inputManager = instance_create(0, 0, objInput);
with(inputManager)
{
    init_input_method();
}
// level data
current_level = -1;
cutscene = 0;
future_list = ds_list_create();
past_list = ds_list_create();
special_future_list = ds_list_create();
special_past_list = ds_list_create();
spawn_tag = 0;
spawn_time = 36000;
temp_spawn_tag = -1;
temp_spawn_time = -1;
temp_mask_rotation = -1;
time_traveling = 0;
in_past = false;
temp_shield = -1;
temp_xspeed = 0;
temp_yspeed = 0;
temp_state = player_state_standby;
temp_animation="idle";
temp_spinning=false;
temp_sprite=sprSonicIdle;
temp_timeline_position=0;
temp_image_index=0;
temp_y=0;
temp_x=0;
temp_yview_offset=0;
temp_xview_offset=0;
temp_fly_value = 0;
ss_perfect_bonus = 0;
ss_rings_bonus = 0;
ss_time_bonus = 0;
// music
jingle = -1;
music = -1;
// set up rings and lives watchers
life_past_list = noone;
ring_past_list = noone;
life_future_list = noone;
ring_future_list = noone;
// -1 - subgame ; 0 - no save; > 1 - saved game
saveSlot=0;
special_past_current_level=0;
special_future_current_level=0;
temp_superform = false;
// this map is used if playing in the no-save mode
no_save_data = ds_map_create();

// randomize seed
randomize();
// create geometric tables
for (var i = 360; i > -1; i--)
{
    sine[i] = sin(degtorad(i));
    cosine[i] = cos(degtorad(i));
}
// start critical processes
instance_create(0, 0, objGameData);
instance_create(0, 0, objMusic);
tr_init();
instance_create(0, 0, objResources);
// start critical processes
// add levels to list
//PLEASE NOTE THE TRUE LEVEL ORDER IS AAZ, FFZ, VVZ, DDZ, TTZ, SSZ, RRZ, PPZ
level_add(AA1_f, AA1_p);
level_add(intro1,introPast1);
level_add(AA2_f, AA2_p);
level_add(RR1_f, RR1_p);
level_add(RR2_f, RR2_p);
level_add(FF1_f, FF1_p);
level_add(FF2_f, FF2_p);
level_add(VV1_f, VV1_p);
level_add(VV2_f, VV2_p);
level_add(DD1_f, DD1_p);
level_add(DD2_f, DD2_p);
level_add(TT1_f, TT1_p);
level_add(TT2_f, TT2_p);
level_add(SS1,SS1);
level_add(PP1,PP1);
level_add(PP2,PP2);
level_add(MM1,MM1);
level_add(ending,ending);
// add special stages
special_level_add(SSF1, SSP1);
special_level_add(SSF2, SSP2);
special_level_add(SSF3, SSP3);
special_level_add(SSF4, SSP4);
special_level_add(SSF5, SSP5);
special_level_add(SSF6, SSP6);
special_level_add(SSF7, SSP7);

load_options_platform_dependant();

/* */
/*  */
