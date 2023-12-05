with (other) {
image_speed=0.215;
image_xscale = -0.25;
image_yscale = 0.25;
hsp = .5;
xreal=x;
if objGameData.character_id[0] == 1 {
    headIndex = 0;
    } else {
        headIndex = 1;
    }

if objGameData.character_id[0] == 3 {
    thirdCharacter = sprTailsFlyingEnding;
    } else {
        thirdCharacter = sprKnucklesFlyingEnding;
    }
    
if objGameData.character_id[0] == 1 {
    characterSprite=sprSonicFallingEnding;
} else if objGameData.character_id[0] == 2 {
    characterSprite=sprTailsFallingEnding;
} else {
    characterSprite=sprKnucklesFallingEnding;
}

}
