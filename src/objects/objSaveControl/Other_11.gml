/// @description  Create save or start a no-save game

objProgram.saveSlot = slots[selectCheck].slotNumber;
create_new_save(slots[selectCheck].characterSelect, slots[selectCheck].slotNumber);
slots[selectCheck].futureLevels[0]=true;
slots[selectCheck].allowLevelStart =false;
slots[selectCheck].visibleFuture=1;
slots[selectCheck].visiblePast=0;
if(slots[selectCheck].slotNumber >= 0)
{
    selectState = 1;
    stageLeftRight = 1;
    // Hints update
    event_user(3);
}
else
{
    // if it's a no save slot, the game immediately starts
    objProgram.in_past = false;
    objProgram.special_future_current_level = 0;
    objProgram.special_past_current_level = 0;
    objGameData.character_id[0] = slots[selectCheck].characterSelect;
    load_emeralds();
    load_lives();
    level_goto_from_save(0);
}

