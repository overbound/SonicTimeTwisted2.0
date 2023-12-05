/// @description  Inherit event
event_inherited();

bg = noone;
em_sprite = noone;
other_em_sprite = noone;
level = 0;
if objProgram.in_past {
    level = objProgram.special_past_current_level;
    other_level = objProgram.special_future_current_level;
    em_sprite = sprSSStone;
    other_em_sprite = sprSSEmerald;
    switch(objProgram.special_past_current_level)
    {
        case 1:
            bg = backSSPast1;
            break;
        case 2:
            bg = backSSPast2;
            break;
        case 3:
            bg = backSSPast3;
            break;
        case 4:
            bg = backSSPast4;
            break;
        case 5:
            bg = backSSPast5;
            break;
        case 6:
            bg = backSSPast6;
            break;
        default:
            bg = backSSPast7;
            break;
    }
} else {
    level = objProgram.special_future_current_level;
    other_level = objProgram.special_past_current_level;
    em_sprite = sprSSEmerald;
    other_em_sprite = sprSSStone;
    switch(objProgram.special_future_current_level)
    {
        case 1:
            bg = backSSFuture1;
            break;
        case 2:
            bg = backSSFuture2;
            break;
        case 3:
            bg = backSSFuture3;
            break;
        case 4:
            bg = backSSFuture4;
            break;
        case 5:
            bg = backSSFuture5;
            break;
        case 6:
            bg = backSSFuture6;
            break;
        default:
            bg = backSSFuture7;
            break;
    }
}
bg_x = __view_get( e__VW.WView, view_current )/2 - background_get_width(bg);
bg_y = (__view_get( e__VW.HView, view_current ) - background_get_height(bg))/2;
em_x = __view_get( e__VW.WView, view_current )/2 - 17 * (level - 1);
em_y = 96;
oem_x = __view_get( e__VW.WView, view_current )/2 - 8 * (other_level - 1);
oem_y = 116;
alarm[0] = 10;
menu = instance_create(x, y, objMenu);
// this one is useful for ports
ss_instructions_override = false;
ss_instructions1 = "";
ss_instructions2 = "";
// if we're playing this using the level select, then a different BGM plays
// and we get a menu instead of a countdown
if(objProgram.saveSlot == -2)
{
    set_zone_music(room);
    play_music_intro(objMusic.musicIntroAsset, 0);
}

