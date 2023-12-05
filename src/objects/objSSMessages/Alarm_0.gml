/// @description  Hide the opening card "Race metal Sonic"
flash = false;
opening=false;
visible=true;

/// If objInputHelp is present, display the hint it contains
instance_activate_object(objInputHelp);
with(objInputHelp)
{
    visible = true;
    active = true;
}

