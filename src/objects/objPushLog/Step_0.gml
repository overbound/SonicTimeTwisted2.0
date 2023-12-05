/// @description  Fall if not sitting on ground
if not (gravity or place_meeting(x, y+1, objSolid)) gravity = 0.21875;

