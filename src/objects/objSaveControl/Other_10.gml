/// @description  Select slot
if selectCheck != 8 {
if selectState == 4 {

    if(is_touchscreen)
    {
        // Recenter camera before delete confirmation
        stageDeleteConfirmSprite = sprDeleteConfirmTouchscreen;
        selectState = 6;
        // Hints update
        event_user(3);
    }
    else
    {
        // Delete confirmation
        stageDeleteConfirmSprite = sprDeleteConfirm;
        selectState = 5;
        // Hints update
        event_user(3);
    }

} else {
        var filename = save_file_name(slots[selectCheck].slotNumber);
        if !stt_file_exists(filename) {
            selectState = 2;
            allowLevelStart = false;
            
            // Hints update
            event_user(3);
        } else {
            selectState = 1;
            // Hints update
            event_user(3);
            // if only one time period is available, switch to it
            if ((!slots[selectCheck].visibleFuture) && (slots[selectCheck].visiblePast) && stageLeftRight == 1)
            {
                stageLeftRight = 0;
            }
            else
            {
                if ((!slots[selectCheck].visiblePast) && (slots[selectCheck].visibleFuture) && stageLeftRight == 0)
                {
                    stageLeftRight = 1;
                }
            }
        }
    }
    
    } else if selectState == 0{

        if(is_touchscreen)
        {
            // Recenter camera before delete mode
            selectState = 3;
        }
        else
        {
            // Delete mode
            selectState = 4;
        }
        // Hints update
        event_user(3);
        sprite_index=sprSaveDelete;
        image_speed=.25;
    
    } else {
        if(is_touchscreen)
        {
            // Recenter camera before leaving delete mode
            selectState = 7;
        }
        else
        {
            selectState = 0;
        }
        // Hints update
        event_user(3);
        sprite_index=sprSaveControl;
        image_speed=0;
    
    }

