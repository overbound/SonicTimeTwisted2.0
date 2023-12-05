/// @description  Run timers
if objProgram.paused or objProgram.lost_focus exit;
// stage timer
stage_timer_active = objGameData.timeout and timer_enabled and started and !cleared and !objProgram.cutscene;
if stage_timer_active {if timer timer -= 1;}
// reset timer
if reseting
{
    reseting -= 1;
    if not reseting
    {
        if instance_exists(objCutscene) transition_to(objFade, room, 24); 
        else {
            transition_to(objTitlecardDisolve, room, 0);
            //play_music_intro(objMusic.musicIntroAsset,0);
        }
    }
}

