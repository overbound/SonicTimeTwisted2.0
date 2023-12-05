if (!frozen)
{
	var handle = instance_create(x-random(64)-30,y,objOstrichHead);
	handle.ostrichHandle = id;
	 

}
else
{
	alarm_set(1, 10);
}
