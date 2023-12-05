/// @description Detect maximum possible scale.

/* need to call that on every videomode change, since the
   display the window is displayed on can always change
   mind multiple displays, always */

/* always leave a margin e.g. for the taskbar (in pixels). */
var _dmargin = 50;
var _dw = display_get_width() - _dmargin;
var _dh = display_get_height() - _dmargin;

var _ms = 1;
while (width * _ms < _dw && height * _ms < _dh) {
    ++_ms;
}

/* need to decrement by one, since the loop will quit only if the scale exceeds */
--_ms;

max_scale = _ms;
/* we're done here */


/* */
/*  */
