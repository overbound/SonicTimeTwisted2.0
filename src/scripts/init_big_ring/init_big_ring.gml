/// @description init_big_ring(ringTag)
/// @param ringTag
function init_big_ring(argument0) {
	// sets the tag and hides the ring if necessary
	// previously handled with instance creation code + room start event, but Android YYC build randomly ran those out of intended order
	// only run with an objRingGiant
	tag = argument0;
	event_user(0);



}
