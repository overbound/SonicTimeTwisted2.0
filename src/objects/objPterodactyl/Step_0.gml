if (!frozen)
{
	y=floor(ystart+cos(step/32)*16);
	step+=1;
	if instance_exists(objLevel.player[0]) {
		if abs(objLevel.player[0].x-x) < 4 && fire == false {
			
			play_sfx(sndBombLaunch,10);
			with bomb[0] gravity=.25;
			with bomb[1] gravity=.25;
			fire=true;
		}
	}

}
