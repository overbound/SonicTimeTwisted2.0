event_inherited();
if (falling)
{
	y += yspeed;
}
//appear!

if appear > 0 && appear < 40 {
    visible = !visible;
    appear +=1;
} else {
    appear = 0;
    visible = true;
}
