function lerp_wrap(argument0, argument1, argument2, argument3, argument4) {
	// lerp_wrap(from, to, amount, minimum, w)
	var from = argument0;
	var to = argument1;
	var amount = argument2;
	var minimum = argument3;
	var w = argument4;
	return wrap(Lerp(from, shorter(from, to, w), amount, minimum), w);



}
