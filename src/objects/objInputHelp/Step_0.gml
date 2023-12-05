if(active)
{
    if(!objProgram.paused)
    {
        duration--;
        if(duration == 0)
        {
            instance_destroy();
        }
    }
}

