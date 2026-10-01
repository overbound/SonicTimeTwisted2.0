/// @description  Start game

if (other.stageLeftRight == 1 && visibleFuture == 1) or (other.stageLeftRight == 0 && visiblePast == 1) {
    if other.stageLeftRight == 0
    objProgram.in_past = true;
    else objProgram.in_past = false;

    objGameData.character_id[0] = characterSelect;
    objProgram.saveSlot=other.slots[other.selectCheck].slotNumber;
    if(objProgram.saveSlot < 0)
    {
        ds_map_clear(objProgram.no_save_data);
    }
    load_emeralds();
    if(LIVES_MODE_IS_CLASSIC)
	{
		load_lives();
	}
	else if(LIVES_MODE_IS_ORIGINS)
	{
		load_coins();
	}
    if iconIndex > 0 {
        level_goto_from_save(iconIndex + 1)
    }
    else {
        level_goto_from_save(iconIndex)
    }
} 

