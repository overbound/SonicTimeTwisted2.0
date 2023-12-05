/// @description  Update PRESS START/TOUCH SCREEN prompt

sync_is_touchscreen();
if(is_touchscreen)
{
    startText = tr("_startText_MO");
}
else
{
    startText = tr("_startText_PC");
}

