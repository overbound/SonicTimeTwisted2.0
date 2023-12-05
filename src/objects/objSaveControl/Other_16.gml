/// @description  Flash update - with flash reduction
if (is_touchscreen && selectState == 0 && sprite_index == sprSaveControl) {
    flash_visibility = false;
    flash_alpha = 0;
}
else
if selectState!=5 {
    flash_counter = (flash_counter + 1) mod 8;
    flash_alpha = 1;
    if(flash_counter == 4 || flash_counter == 1)
    {
        flash_alpha = 0.2;        
    }
    else
    {
        if(flash_counter == 5 || flash_counter == 0)
        {
            flash_alpha = 0.4;        
        }
        else
        {
            if(flash_counter > 5)
            {
                flash_alpha = 0.6;
            }
            else
            {
                flash_alpha = 0;        
            }
        }
    }
    flash_visibility = flash_alpha > 0;
} else flash_visibility=true;

