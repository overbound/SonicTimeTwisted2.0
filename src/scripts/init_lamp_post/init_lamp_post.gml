/// @description init_lamp_post(ringTag)
/// @param ringTag
function init_lamp_post(argument0) {
	// sets the tag and updates the state if necessary
	// previously handled with instance creation code + room start event, but Android YYC build randomly ran those out of intended order
	// only run with an objLampPost
	tag = argument0;
	event_user(0);



}
