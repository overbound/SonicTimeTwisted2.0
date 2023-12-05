var __b__;
__b__ = action_if_variable(frozen, false, 0);
if __b__
{
var handle = instance_create(x-random(64)-30,y,objOstrichHead);
handle.ostrichHandle = id;
 

}
else
{
action_set_alarm(10, 1);
}
