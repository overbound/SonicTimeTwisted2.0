if allowCollision == true {
    active = false;
    allowCollision = false;
}
if !in_view(view_current,150) && active == false {
    y = other.y+other.sprite_height*.75;
}
//push the plane out of the object, otherwise it becomes posssible for it to cross it
if(other.is_top)
{
    y = ceil(y);
    while(place_meeting(x, y, other))
    {
        y++;
    }
}
else
{
    if(other.is_right)
    {
        x = floor(x);
        while(place_meeting(x, y, other))
        {
            x--;
        }
    }
    else
    {
        x = ceil(x);
        while(place_meeting(x, y, other))
        {
            x++;
        }
    }
}

