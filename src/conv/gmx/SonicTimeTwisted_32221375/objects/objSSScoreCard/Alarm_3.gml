if(next_message)
{
    // there's a message to display about turning into Super Sonic,
    // so we're not done here yet
    state = 5;
    alarm[4] = 30;
}
else
{
    stop_all_music(false);
    level_goback();
}

