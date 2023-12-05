/// @description  Touchscreen hints update
hint_top = "";
hint_bottom = "";
if(is_touchscreen)
{
    switch(selectState)
    {
        case 0:
        case 7:
            hint_top = tr("_save_mobile_hint_select");
            break;
        case 1:
            hint_top = tr("_save_mobile_hint_act_select_top");
            hint_bottom = tr("_save_mobile_hint_act_select_bottom");
            break;
        case 2:
            hint_top = tr("_save_mobile_hint_character_select_top");
            hint_bottom = tr("_save_mobile_hint_character_select_bottom");
            break;
        case 3:
        case 4:
            hint_top = tr("_save_mobile_hint_delete_top");
            hint_bottom = tr("_save_mobile_hint_delete_bottom");
            break;
        case 5:
        case 6:
            hint_top = tr("_save_mobile_hint_delete_confirm_top");
            hint_bottom = tr("_save_mobile_hint_delete_confirm_bottom");
            break;
    }
}
hint_up_to_date = false;

