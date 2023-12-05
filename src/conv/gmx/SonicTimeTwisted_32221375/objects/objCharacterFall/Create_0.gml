
state=0;
if objGameData.character_id[0] == 1 {
    sprite_index=sprSonicFallingEnding;
} else if objGameData.character_id[0] == 2 {
    sprite_index=sprTailsFallingEnding;
} else {
    sprite_index=sprKnucklesFallingEnding;
}
image_speed = 0;
__view_set( e__VW.XView, 0, x-__view_get( e__VW.WView, 0 )*.5 );
__view_set( e__VW.YView, 0, y-__view_get( e__VW.HView, 0 )*.5-310 );

// "bad" "noemeralds" "nostones" "good"
music = bgmEndingBad;
alarm[1] = 1;
if objProgram.special_future_current_level >= 7 && objProgram.special_past_current_level >= 7 {
    endType = "good";
    music = bgmEndingGood;
        if objGameData.character_id[0] == 1 {
            instance_create(1856,496,objGalanikFloat);
            sprite_index = sprSuperSonicStar;
            x = 2000;
            y =468;
            image_xscale = .0825;
            image_yscale = .0825;
            depth = 4;
            state = 18;
        }
} else if objProgram.special_future_current_level >= 7 {
    endType = "nostones";
        if objGameData.character_id[0] == 1 {
            instance_create(1856,496,objGalanikFloat);
            sprite_index = sprSuperSonicStar;
            x = 2000;
            y =468;
            image_xscale = .0825;
            image_yscale = .0825;
            depth = 4;
            state = 18;
        }
}  else if objProgram.special_past_current_level >= 7 {
    endType = "noemeralds";
}  else {
    endType = "bad";
}
if sprite_index != sprSuperSonicStar
    gravity=0.015;

