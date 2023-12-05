if(objProgram.saveSlot > -2) // if we are playing this in the mini-game/level select mode, lives don't appear
{
    var score_card = instance_create(64, 0, objSSScoreCard);
    score_card.visible = true;
    if(ss_instructions_override)
    {
        score_card.ss_instructions1 = ss_instructions1;
        score_card.ss_instructions2 = ss_instructions2;
    }
}
else
{
    // if we're playing this using the level select, we get a menu instead of a countdown
    alarm[1] = 80;

}

