/// @description  Start level
var local_id;
spawn_id = noone;
// go through spawn points
for (var i=0; i<instance_number(objStart); i+=1)
{
    // get spawn position
    local_id = instance_find(objStart, i);
    // set as spawn point if matching tag
    if objProgram.temp_spawn_tag>-1 {
    
         if (local_id.tag==objProgram.temp_spawn_tag) {
            spawn_id = local_id; 
            break;
         }
         
     }
    else if (local_id.tag==objProgram.spawn_tag) {
        spawn_id = local_id; 
        break;
    }
}
// setup spawn
if spawn_id>-1
{
    // reset time
    if objProgram.temp_spawn_tag>-1 timer = objProgram.temp_spawn_time; else
    timer = objProgram.spawn_time;
    // handle time travel
    if objProgram.time_traveling!=0
    {
        // evaluate existing players
        player[0] = instance_find(objPlayer, 0);
        player[0].x = spawn_id.x;
        player[0].y = spawn_id.y+1;
        
        if objGameData.character_id[0] == 2
            player[0].y = spawn_id.y+2;
            
        with objPlayer player_is_entering();
    }
    else
    {
        // add player(s)
        player[0] = instance_create(spawn_id.x, spawn_id.y+1, objPlayer);
        if objGameData.character_id[0] == 2
            player[0].y = spawn_id.y+2;
        
        if objProgram.temp_spawn_tag == 0 {
            __view_set( e__VW.XView, 0, player[0].x-213 )
            __view_set( e__VW.YView, 0, player[0].y-120 )
        }
    }
    
    with player[0].camera {
        bottom = other.spawn_id.bottom;
        top = other.spawn_id.top;
        left = other.spawn_id.left;
        right = other.spawn_id.right;
    
    }
    
    // run start script
    if spawn_id.start_script != noone
        script_execute(spawn_id.start_script);
    
}
// reset temporary data
objProgram.time_traveling = 0;
alarm[1]=1;
objProgram.level = room;
// create particle system
particles = part_system_create();


/// set up watchers for lives and big rings
if objProgram.in_past && !ds_exists(objProgram.ring_past_list, ds_type_list){
    objProgram.life_past_list = ds_list_create();
    objProgram.ring_past_list = ds_list_create();
    
    } else if !ds_exists(objProgram.ring_future_list, ds_type_list) {
    
        objProgram.life_future_list = ds_list_create();
        objProgram.ring_future_list = ds_list_create();
     
}
if objProgram.in_past {
    /* big ring past */
    /*for (var i=0; i<instance_number(objRingGiant); i+=1){
        local_id = instance_find(objRingGiant, i);
        
        if ds_list_find_index(objProgram.ring_past_list, local_id.tag) > -1 {
        
            with local_id { reaction_script = noone; visible = false;}
        
        } 
    }*/
    
   /* for (var i=0; i<instance_number(objMonitor); i+=1){
        local_id = instance_find(objMonitor, i);
        
        if ds_list_find_index(objProgram.life_past_list, local_id) > -1 {
        
            with local_id { instance_destroy(); }
        
        } 
    }*/
} else {
    /* big ring future */
  /*for (var i=0; i<instance_number(objRingGiant); i+=1){
        local_id = instance_find(objRingGiant, i);
        
        if ds_list_find_index(objProgram.ring_future_list, local_id.tag) > -1 {
        
            with local_id { reaction_script = noone; visible = false; }
        
        } 
    }*/
    
   /* for (var i=0; i<instance_number(objMonitor); i+=1){
        local_id = instance_find(objMonitor, i);
        
        if ds_list_find_index(objProgram.life_future_list, local_id) > -1 {
        
            with local_id { instance_destroy(); }
        
        } 
    }*/
}

/* */
///set animations for level start
with player[0] {
    if other.spawn_id.tag == 0
        switch room {
        
        case AA1_f:
        
            animation_new ="idle";
        
        break;
        
        case AA1_p:
        
            animation_new ="idle";
        
        break;
        
                case AA2_f:
        
            animation_new ="idle";
        
        break;
        
        case AA2_p:
        
            animation_new ="idle";
        
        break;
        
         case RR1_f:
        
            animation_new ="spin";
            start_rr1();
            
        break;
        
        case RR1_p:
        
            animation_new ="spin";
            start_rr1();
            
        break;
        
        case RR2_f:
        
            animation_new ="level_start";
            
        break;
        
        case RR2_p:
        
            animation_new ="level_start";
            
        break;
        
        case FF1_f:
        
            animation_new ="idle";
            
        break;
        
        case FF1_p:
        
            animation_new ="idle";
            
        break;
        
        case FF2_f:
        
            animation_new ="level_start";
            
        break;
        
        case FF2_p:
        
            animation_new ="level_start";
            
        break;
        
        case VV1_f:
        
            animation_new ="spin";
            start_vv1();
            
        break;
        
        case VV1_p:
        
            animation_new ="spin";
            start_vv1();
            
        break;
        
        case VV2_f:
        
            animation_new ="idle";
            
        break;
        
        case VV2_p:
        
            animation_new ="idle";
            
        break;
        
        default:
        
                animation_new ="idle";
                
        break;
        
        case DD1_f:
        
            animation_new =objProgram.temp_animation;
            start_dd1();
        
        break;
        
        case DD1_p:
            
            animation_new =objProgram.temp_animation;
            start_dd1();
            
        break;
                
        case DD2_f:
        
            animation_new ="idle";
        
        break;
        
        case DD2_p:
        
            animation_new ="idle";
            
        break;
        
       case TT1_f:
            start_tt1()
            animation_new = "spin";
        break;
        
        case TT1_p:
        
            start_tt1();
            if (objProgram.temp_animation != "idle" && objProgram.temp_animation != "spin")
            {
                animation_new = objProgram.temp_animation;
            }
            else
            {
                animation_new = "spin";
            }
            
        break;
        
        case SS1:
        
            animation_new ="idle";
            if y > 4160
                with objSSBack.backWall { image_index=1; }
        break;
        
        case PP1:
        
            animation_new ="idle";
            
        break;
        
        case PP2:
        
            animation_new ="level_start";
            
        break;
        
        case MM1:
            
            objGameData.rings[0]=50;
            player_is_super_flying();
            facing=1;
        
        break;
    }
    else if other.spawn_id.tag > 29 && other.spawn_id.tag < 40 {
    
        animation_new ="spin";
    
    }
}

/* */
/// save level and play music
save_level();
stt_save_files();
set_zone_music(room);
    // if cutscene, let cutscene take over
    if objProgram.cutscene
    {
        objLevel.timer_enabled = false;
            //started = true;
    } else {
        play_music_intro(objMusic.musicIntroAsset,0);
    }
// create hud
instance_create(0, 0, objHud);
// set alarm to reset temp values
alarm[1]=1;

/* */
/*  */
