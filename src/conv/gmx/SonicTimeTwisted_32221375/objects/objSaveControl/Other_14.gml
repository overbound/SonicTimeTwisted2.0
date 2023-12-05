/// @description  Flash update - without flash reduction
if (is_touchscreen && selectState == 0 && sprite_index == sprSaveControl) {
    flash_visibility = false;
}
else
if selectState!=5 && objScreen.frame_counter {
    flash_visibility = !flash_visibility;
} else flash_visibility=true;

