if(state >= 2)
{
    draw_set_font(objResources.fontHud);
    
    /// Render Names
    // fade for menu
    draw_set_alpha(screenAlpha);
    draw_set_color(c_black);
    draw_rectangle(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),camera_get_view_x(view_camera[0])+objScreen.width,camera_get_view_y(view_camera[0])+objScreen.height,false);
        
    // setup
    draw_set_color(c_white);
    draw_set_alpha(image_alpha);
    draw_set_valign(fa_top);
    draw_set_halign(fa_center);
    draw_set_font(objResources.fontHud);
    
    switch name {
        case 0:
        case 1:
        case 2:
            var lA = clamp(logoAlpha, 0, 1);
            draw_set_color(c_black);
            draw_set_alpha(lA);
            draw_rectangle(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),camera_get_view_x(view_camera[0])+objScreen.width,camera_get_view_y(view_camera[0])+objScreen.height,false);
            draw_set_alpha(1);
            draw_set_color(c_white);
            draw_sprite_ext(sprOverboundLogo,0,camera_get_view_x(view_camera[0])+(objScreen.width / 2),camera_get_view_y(view_camera[0])+90,1,1,0,c_white,lA);
            draw_text_color(camera_get_view_x(view_camera[0])+(objScreen.width / 2),camera_get_view_y(view_camera[0])+15,string_hash_to_newline(tr("_splash_ASonicfangame")),c_white,c_white,c_teal,c_teal,lA);
            draw_text_color(camera_get_view_x(view_camera[0])+(objScreen.width / 2),camera_get_view_y(view_camera[0])+150,string_hash_to_newline(tr("_splash_ThisGameIsFreeware")),c_white,c_white,c_teal,c_teal,lA);
            draw_text_color(camera_get_view_x(view_camera[0])+(objScreen.width / 2),camera_get_view_y(view_camera[0])+170,string_hash_to_newline(tr("_splash_DoNotSell")),c_white,c_white,c_red,c_red,lA);
            break;
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
            var yshift = (objScreen.height / 2);
            if(alarm[0] >= 60)
            {
                yshift = yshift + 27 + (alarm[0] - 60) * 32;
            }
            else
            if(alarm[0] > 5)
            {
                yshift = yshift - 27 + alarm[0] - 5;
            }
            else
            {
                yshift = yshift - 27 - (5 - alarm[0]) * 32;            
            }
            draw_text_color(camera_get_view_x(view_camera[0])+(objScreen.width / 2),camera_get_view_y(view_camera[0])+yshift,string_hash_to_newline(names[name - 3]),c_white,c_white,c_yellow,c_yellow,1);
            break;
        case 12:
            if (pauseState == 3) {
                draw_text_color(camera_get_view_x(view_camera[0])+(objScreen.width / 2), camera_get_view_y(view_camera[0])+(objScreen.height - 12), string_hash_to_newline(startText),c_white,c_white,c_yellow,c_yellow,1); 
            }
            start=true;
            break;
    }
    draw_set_halign(fa_center);
    draw_set_color(c_white);
    if(skipping > 0)
    {
        if(skipping <= 30)
        {
            draw_set_alpha(skipping/30);
        }
        else
        {
            draw_set_alpha((60 - skipping)/30);    
        }
        draw_rectangle(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), camera_get_view_x(view_camera[0]) + objScreen.width, camera_get_view_y(view_camera[0]) + objScreen.height, false);
        draw_set_alpha(1);
    }
}
if(state <= 2 || state == 4)
{
    if(state == 0 || state == 4)
    {
        draw_set_alpha(1);
    }
    else
    {
        draw_set_alpha(textAlpha);
    }
    draw_set_color(c_black);
    draw_rectangle(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),camera_get_view_x(view_camera[0])+objScreen.width,camera_get_view_y(view_camera[0])+objScreen.height,false);
    draw_set_color(c_white);
    draw_set_alpha(textAlpha);
    
    var text_origin = objScreen.width/2;
    var line_length = objScreen.width - 8;
    
    draw_set_halign(fa_center);
    
    draw_set_font(objResources.fontHud);
    draw_text_colour(camera_get_view_x(view_camera[view_current]) + text_origin, camera_get_view_y(view_camera[view_current]) + epilepsy_title_y, string_hash_to_newline(epilepsy_title), c_red, c_red, c_white, c_white, textAlpha);
    draw_set_font(objResources.fontMicro);
    draw_text_ext_colour(camera_get_view_x(view_camera[view_current]) + text_origin, camera_get_view_y(view_camera[view_current]) + epilepsy_y, string_hash_to_newline(epilepsy), 12, line_length, c_ltgray, c_ltgray, c_white, c_white, textAlpha);
    
    
    draw_set_font(objResources.fontHud);
    draw_text_colour(camera_get_view_x(view_camera[view_current]) + text_origin, camera_get_view_y(view_camera[view_current]) + disclaimer_title_y, string_hash_to_newline(disclaimer_title), c_red, c_red, c_white, c_white, textAlpha);
    draw_set_font(objResources.fontMicro);
    draw_text_ext_colour(camera_get_view_x(view_camera[view_current]) + text_origin, camera_get_view_y(view_camera[view_current]) + disclaimer_y, string_hash_to_newline(disclaimer), 12, line_length, c_ltgray, c_ltgray, c_white, c_white, textAlpha);
    draw_text_ext_colour(camera_get_view_x(view_camera[view_current]) + text_origin, camera_get_view_y(view_camera[view_current]) + github_y, string_hash_to_newline(github), 12, line_length, c_blue, c_blue, c_white, c_white, textAlpha);
    draw_set_alpha(1);   
}
/// version number
if(menu.state > 0 && state != 4)
{
    draw_set_font(objResources.fontLives);
    draw_set_halign(fa_right);
    draw_set_valign(fa_bottom);
    draw_text(
        camera_get_view_x(view_camera[view_current]) + objScreen.width,
        camera_get_view_y(view_camera[view_current]) + objScreen.height,
        string_hash_to_newline(VERSION)
    );
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    
}

