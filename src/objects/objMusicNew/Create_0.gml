/// @description Init Music Object

	//Enum
	enum states_music {
		STATE_SILENCE,
		STATE_MUSIC,
		STATE_BOSS,
		STATE_JINGLE,
		STATE_EFFECT,
		TOTAL_STATES
	}
	
	//Music States Vars
	state = states_music.STATE_SILENCE;
	statePrevious = state;
	
	//Current Music Vars
	musicMain = -1;
	bossMain = -1;
	musicJingle = -1;
	musicEffect = -1;
	currentMusic = -1;
	
	//Music Asset Vars
	musicAsset = -1;
	bossAsset = -1;
	musicJingleAsset = -1;
	musicEffectAsset = -1;
	
	//Loop Point Vars
	musicLoopStart = 0;
	musicLoopEnd = 0;
	bossLoopStart = 0;
	bossLoopEnd = 0;
	jingleLoopStart = 0;
	jingleLoopEnd = 0;
	effectLoopStart = 0;
	effectLoopEnd = 0;
	
	//Previous Positions Vars
	previousPositionMain = 0;
	previousPositionBoss = 0;
	previousPositionJingle = 0;
	previousPositionEffect = 0;
	
	//Fallback States Vars (Default is "STATE_MUSIC" or "STATE_BOSS")
	queuedState = statePrevious;
	priorityMusicState = states_music.STATE_MUSIC;
	
	//Audio Volume Vars
	sfxGain = 100;
	bgmGain = 100;
	masterGain = 75;
