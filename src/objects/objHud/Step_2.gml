/// @description  pause menu end step
if objProgram.paused && instance_exists(menu) {
    if menu.state != 0 {
        // allow the menu object to handle everything
        with(menu) event_user(2);
    }
}

/// Update timer string
var total_time, minutes, seconds, milliseconds;
if instance_exists(objLevel) {
    // total time
    total_time = min(36000-objLevel.timer, 36000);
    
    // minutes
    minutes = string(total_time div 3600);
    
    // seconds
    seconds = (total_time div 60) mod 60;
    if (seconds<10) seconds = "0"+string(seconds); else
    seconds = string(seconds);
    
    // milliseconds
    milliseconds = ceil((total_time mod 60)/0.60);
    if (milliseconds<10) milliseconds = "0"+string(milliseconds); else
    milliseconds = string(milliseconds);
    
    // update time stamp
    if (objScreen.timer_mode) {
        time_stamp = minutes+":"+seconds;
    } else {
        time_stamp = minutes+"'"+seconds+"\""+milliseconds;
    }
}

image_index = objScreen.image_index div 8;
