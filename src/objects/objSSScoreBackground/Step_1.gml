// Only show the menu in level select mode
if(objProgram.saveSlot == -2)
{
    if(menu.state != 0)
    {
        with(menu)
        {
            event_user(1);
        }
    }
}

