/// @description  Setting the sprite, depends on the time period and the locale
// Call this when a room loads or when the current language changes
if objProgram.in_past == true {
    if(sprite_exists(objResources.timePostFutureSprite))
    {
        sprite_index = objResources.timePostFutureSprite;
    }
    else
    {
        sprite_index = sprFuturePost;
    }
}
else {
    if(sprite_exists(objResources.timePostPastSprite))
    {
        sprite_index = objResources.timePostPastSprite;
    }
    else
    {
        sprite_index = sprPastPost;
    }
}

