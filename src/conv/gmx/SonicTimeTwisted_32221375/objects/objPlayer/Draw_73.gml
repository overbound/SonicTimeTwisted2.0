// draw drowning counter
if (waterCountTime > 0) {    
    draw_sprite_ext(sprAirCounter,waterCountDigit,x+facing*4,y-40,1,1,0,c_white,waterCountAlpha);
    
    if (waterCountTime >= 20) {
        if (waterCountAlpha < 1) {
            waterCountAlpha += 0.05;
            if (waterCountAlpha > 1) waterCountAlpha = 1;
        }
    } else {
        if (waterCountAlpha > 0) {
            waterCountAlpha -= 0.05;
            if (waterCountAlpha < 0) waterCountAlpha = 0;
        }
    }
    
    waterCountTime--;
}

