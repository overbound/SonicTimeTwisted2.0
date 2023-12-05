/// @description  step
if(switch_script != input_method_dummy_script)
{
    var prev_is_touchscreen = is_touchscreen;
    script_execute(switch_script);
    if(is_touchscreen != prev_is_touchscreen)
    {
        if(is_touchscreen && cursor >= 0)
        {
            cursor = -1;
        }
        if((!is_touchscreen) && cursor < 0)
        {
            cursor = 0;
        }
    }
}
menu_fn_step();

