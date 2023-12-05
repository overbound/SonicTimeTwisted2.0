if (!frozen)
{
	/// Timer
	if timer {timer -= 1; if not timer {state = (state+1) mod 2; timer = 16;}}

}
