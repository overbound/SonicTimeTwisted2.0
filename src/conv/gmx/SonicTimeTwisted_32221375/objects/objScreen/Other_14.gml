/// @description Detect alt-enter or enter-alt presses.

// macOS special begin, this does nothing on any target that's not macOS!
if (objProgram.device_info & DEVICE_OS_MACOS) {
    var _iswindowfs = window_get_fullscreen();
    var _isgamefs = video_mode == 0;
    // check if the window state does not match game's expected state.
    if (_iswindowfs && !_isgamefs) {
        // window is now fullscreen, update video_mode accordingly
        prev_video_mode = video_mode;
        video_mode = 0; // fs
        window_scale = 0; // fs
        show_debug_message("osx: wnd -> fs: prevscale=" + string(prev_video_mode));
        save_options();
    }
    else if (!_iswindowfs && _isgamefs) {
        // fetch max_scale from display:
        event_user(3);
        // fun:
        var _scalebyX = clamp(window_get_width() div width, 1, max_scale);
        var _scalebyY = clamp(window_get_height() div height, 1, max_scale);
        // pick the minimum scale (so it fits)
        var _scaleguess = min(_scalebyX, _scalebyY);
        video_mode = _scaleguess;
        window_scale = _scaleguess;
        show_debug_message("osx: fs -> wnd: scale=" + string(video_mode));
        save_options();
    }
    // do not execute the code below please, we can't do that.
    exit;
}
// macOS special end

// Since we can never trust GameMaker, let's handle Alt-Enter manually.
// oh and Alt-Enter can be pressed in various ways, Alt-Enter, Enter-Alt, weird!
// PS: This user event can technically be called from any object.
//     but since we are dealing with "quality" software
//     it is called in a with() from objInput.
var _altenter = keyboard_check(vk_alt) && keyboard_check(vk_enter);

if (_altenter && !altenter_hold) {
    altenter_hold = true;
    event_user(5);
}
else if (!_altenter && altenter_hold) {
    altenter_hold = false;
}

// le GM moment.
if (altenter_hold) {
    keyboard_clear(vk_alt);
    keyboard_clear(vk_enter);
}


