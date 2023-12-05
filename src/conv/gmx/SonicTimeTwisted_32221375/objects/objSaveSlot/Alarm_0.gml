/// @description  Choose Icon
var _b64false = base64_encode(string(false));
stt_ini_open(save_file_name(slotNumber));
futureLevels[0]=real(base64_decode(ini_read_string(LEVELS, aAA1_f, _b64false)));
futureLevels[1]=real(base64_decode(ini_read_string(LEVELS, aAA2_f, _b64false)));
futureLevels[2]=real(base64_decode(ini_read_string(LEVELS, aRR1_f, _b64false)));
futureLevels[3]=real(base64_decode(ini_read_string(LEVELS, aRR2_f, _b64false)));
futureLevels[4]=real(base64_decode(ini_read_string(LEVELS, aFF1_f, _b64false)));
futureLevels[5]=real(base64_decode(ini_read_string(LEVELS, aFF2_f, _b64false)));
futureLevels[6]=real(base64_decode(ini_read_string(LEVELS, aVV1_f, _b64false)));
futureLevels[7]=real(base64_decode(ini_read_string(LEVELS, aVV2_f, _b64false)));
futureLevels[8]=real(base64_decode(ini_read_string(LEVELS, aDD1_f, _b64false)));
futureLevels[9]=real(base64_decode(ini_read_string(LEVELS, aDD2_f, _b64false)));
futureLevels[10]=real(base64_decode(ini_read_string(LEVELS, aTT1_f, _b64false)));
futureLevels[11]=real(base64_decode(ini_read_string(LEVELS, aTT2_f, _b64false)));
futureLevels[12]=real(base64_decode(ini_read_string(LEVELS, aSS1, _b64false)));
futureLevels[13]=real(base64_decode(ini_read_string(LEVELS, aPP1, _b64false)));
futureLevels[14]=real(base64_decode(ini_read_string(LEVELS, aPP2, _b64false)));
futureLevels[15]=real(base64_decode(ini_read_string(LEVELS, aMM1, _b64false)));
pastLevels[0]=real(base64_decode(ini_read_string(LEVELS, aAA1_p, _b64false)));
pastLevels[1]=real(base64_decode(ini_read_string(LEVELS, aAA2_p, _b64false)));
pastLevels[2]=real(base64_decode(ini_read_string(LEVELS, aRR1_p, _b64false)));
pastLevels[3]=real(base64_decode(ini_read_string(LEVELS, aRR2_p, _b64false)));
pastLevels[4]=real(base64_decode(ini_read_string(LEVELS, aFF1_p, _b64false)));
pastLevels[5]=real(base64_decode(ini_read_string(LEVELS, aFF2_p, _b64false)));
pastLevels[6]=real(base64_decode(ini_read_string(LEVELS, aVV1_p, _b64false)));
pastLevels[7]=real(base64_decode(ini_read_string(LEVELS, aVV2_p, _b64false)));
pastLevels[8]=real(base64_decode(ini_read_string(LEVELS, aDD1_p, _b64false)));
pastLevels[9]=real(base64_decode(ini_read_string(LEVELS, aDD2_p, _b64false)));
pastLevels[10]=real(base64_decode(ini_read_string(LEVELS, aTT1_p, _b64false)));
pastLevels[11]=real(base64_decode(ini_read_string(LEVELS, aTT2_p, _b64false)));
pastLevels[12]=false;
pastLevels[13]=false;
pastLevels[14]=false;
pastLevels[15]=false;
characterSelect=real(base64_decode(ini_read_string(STATS, CHARACTER, base64_encode(string(1)))));
currentStone = real(base64_decode(ini_read_string(EMERALDS, PAST, _b64false)));
currentEmerald = real(base64_decode(ini_read_string(EMERALDS, FUTURE, _b64false)));
stt_ini_close();
for(i=0; i < 16; i++) {
    if pastLevels[i] == true {
        
        lastPastLevel=i;
    
    } 
    
    if futureLevels[i] == true {
        
        lastFutureLevel=i;
    
    } 
}
show_debug_message("Last FUTURE" + string(lastFutureLevel));
if lastPastLevel > lastFutureLevel {
    iconIndex = lastPastLevel;
}
else iconIndex = lastFutureLevel;
lastIndex = iconIndex;
if pastLevels[iconIndex] == true {
     visiblePast=1;
 }
 else if pastLevels[iconIndex] == false 
     visiblePast = 0;
 
 if futureLevels[iconIndex] == true {
     visibleFuture=1;
 }
 else if futureLevels[iconIndex] == false  visibleFuture = 0;

