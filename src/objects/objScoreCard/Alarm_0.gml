state = 1;

if (title_offset1 > title_offset2)
{
	alarm_set(1, (title_offset1/16)+1);
}
else
{
	alarm_set(1, (title_offset2/16)+1);
}
