/// @description load_big_ring(ringTag)
/// @param ringTag
function load_big_ring(argument0) {
	// Counts current emerald being attempted
	return real(save_data_read(BIG_RINGS, string(room)+string(argument0), -1));



}
