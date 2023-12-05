/// @description  Get transition mode
switch mode
{
case 0: // fade out
    if (fade_alpha>=1) {if next_room>-1 room_goto(next_room); mode = 1; break;}
    fade_alpha += .25;
    break;
case 1: // animate
    // skip on START
    if fade_alpha==0 and planet_ox==-10 and planet_oy==10 and input_check_pressed(cSTART) { 
        objLevel.started = true; 
        objLevel.timer_enabled = true; 
        mode = 2;
        break;
    }
    // move ufo
    planet_ox = max(planet_ox-8, -10);
    planet_oy = min(planet_oy+8, 10);
    // scale title
    if title_word<4
    {
        // ignore empty strings
        if title_length[title_word]<1
        {
            title_word += 1;
            if title_word==4 alarm[0] = 50 //120;
        }
        // ignore if past string length
        else if title_pos[title_word]<title_length[title_word]
        {
            // decrease scale to normal
            title_scale[title_word, title_pos[title_word]] = max(title_scale[title_word, title_pos[title_word]]-4, 1);
            if title_scale[title_word, title_pos[title_word]]==1
            {
                // go to the next letter / word
                title_pos[title_word] += 1;
                if title_pos[title_word]==title_length[title_word] {title_pos[title_word] -= 1; title_word += 1;}
                if title_word==4 alarm[0] = 50 //120;
            }
        }
    }
    // fade in
    if fade_alpha>0 fade_alpha -= .0125;
break;
case 2: // exit
    planet_ox -= 16;
    // fade away
    image_alpha -= 0.02;
    if image_alpha<=0 instance_destroy();
    break;
case 3: // fade out only
    if fade_alpha<=0 {instance_destroy(); break;}
    fade_alpha -= image_speed;
    break;
}
// move banner
banner_ox -= floor(banner_speed);
if (banner_speed > 3) {
    banner_speed -= (banner_speed - 3) * 0.035;
    if (banner_speed < 3) banner_speed = 3;
}
if (banner_ox < 0) banner_ox += 208;

