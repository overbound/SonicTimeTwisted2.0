/// @description Initialize
enum MUSIC_STATE {
    SILENCE,     // 0
    MUSIC_INTRO, // 1
    MUSIC_LOOP,  // 2
    BOSS_INTRO,  // 3
    BOSS_LOOP,   // 4
    JINGLE,      // 5
    EFFECT       // 6
};

state = MUSIC_STATE.SILENCE;
statePrevious = state;
// music types
musicIntro = -1;
musicLoop = -1;
bossIntro = -1;
bossLoop = -1;
musicJingle = -1;
musicEffect = -1;
currentMusic = -1;
// music asset indexes
musicIntroAsset = -1;
musicLoopAsset = -1;
bossIntroAsset = -1;
bossLoopAsset = -1;
musicJingleAsset = -1;
musicEffectAsset = -1;
// previous positions for every track type:
previousPositionIntro = 0;
previousPositionLoop = 0;
previousPositionBossIntro = 0;
previousPositionBossLoop = 0;
previousPositionJingle = 0;
previousPositionEffect = 0;
// default fall back (only musicIntro(1) or bossIntro(3))
queuedState = statePrevious;
priorityMusicState = MUSIC_STATE.MUSIC_INTRO;

// volume variables.
sfxGain = 100;
bgmGain = 100;
masterGain = 75;

